require 'cfn-nag-custom-rules-example'

puts *ARGV.join(" ")
exit
require 'find'
rule_filenames = []
$LOAD_PATH.each do |load_path|
  if File.directory? load_path

    Find.find(load_path) do |path|
      rule_filenames << path if path =~ /.*Rule\.rb$/
    end
  end  
end

puts rule_filenames.uniq
