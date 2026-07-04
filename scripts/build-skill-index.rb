#!/usr/bin/env ruby
# Builds the agent-skills discovery artifacts: one zip archive per skill
# (SKILL.md at the archive root, per the Agent Skills Discovery RFC) and an
# index.json whose entries point at the archives under the given base URL.
#
# Archives are named <skill>-<first-12-hex-of-sha256>.zip so that a changed
# archive gets a new URL (cache busting), and a stale index can never point
# at a newer zip with a mismatched digest.
#
# Usage: scripts/build-skill-index.rb <artifact-base-url> [out-dir]
#   e.g. scripts/build-skill-index.rb \
#          https://github.com/prokerala/agent-skills/releases/download/latest dist

require "digest"
require "fileutils"
require "json"

SKILLS = %w[prokerala-astrology-api prokerala-sdk-php].freeze
SCHEMA = "https://schemas.agentskills.io/discovery/0.2.0/schema.json"

base_url = ARGV[0]&.chomp("/")
abort "Usage: #{$PROGRAM_NAME} <artifact-base-url> [out-dir]" if base_url.nil? || base_url.empty?

root = File.expand_path("..", __dir__)
out_dir = File.expand_path(ARGV[1] || "dist", root)
FileUtils.mkdir_p(out_dir)

def skill_description(skill_dir)
  frontmatter = File.read(File.join(skill_dir, "SKILL.md"))[/\A---\n(.*?)\n---/m, 1]
  abort "No frontmatter in #{skill_dir}/SKILL.md" unless frontmatter
  description = frontmatter[/^description:\s*(.+)$/, 1]
  abort "No description in #{skill_dir}/SKILL.md" unless description
  description.strip.delete_prefix('"').delete_suffix('"')
end

skills = SKILLS.map do |skill|
  skill_dir = File.join(root, skill)
  abort "Missing skill directory: #{skill_dir}" unless File.directory?(skill_dir)
  description = skill_description(skill_dir)

  archive = File.join(out_dir, "#{skill}.zip")
  FileUtils.rm_f(Dir[File.join(out_dir, "#{skill}*.zip")])
  Dir.chdir(skill_dir) do
    files = Dir.glob("**/*", File::FNM_DOTMATCH)
               .select { |f| File.file?(f) }
               .reject { |f| File.basename(f) == ".DS_Store" }
               .sort
    system("zip", "-X", "-q", archive, *files, exception: true)
  end

  digest = Digest::SHA256.file(archive).hexdigest
  hashed = "#{skill}-#{digest[0, 12]}.zip"
  FileUtils.mv(archive, File.join(out_dir, hashed))

  {
    name: skill,
    type: "archive",
    description: description,
    url: "#{base_url}/#{hashed}",
    digest: "sha256:#{digest}"
  }
end

index = { "$schema": SCHEMA, skills: skills }
File.write(File.join(out_dir, "index.json"), JSON.pretty_generate(index) + "\n")

puts "Wrote #{out_dir}/index.json"
skills.each { |s| puts "  #{s[:name]} -> #{s[:url]}" }
