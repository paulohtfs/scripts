require "chake"
require "colorize"
require "yaml"

# Defining the main files and dirs
#   May not have all of them here
root=Dir.getwd
CONFIG_FILE=root+'/table.yml'
MSG_FILE=root+'/msg/msg_rake.yml'
COOKBOOK_DIR=root+'/cookbooks'

# Loading the mains YAML files
#   May not have all of them here
configs=YAML.load_file(CONFIG_FILE)
msgs=YAML.load_file(MSG_FILE)

namespace :serve do
  desc 'Run all the cookbooks. Full table :))'
  task :all do
    Rake::Task["converge"].invoke
  end

  desc 'Choose what you want from the menu'
  task :menu do
    Rake::Task["serve:init_table"].invoke
    puts msgs['table_info'].white
    configs['tools'].each_with_index do |t,i|
      puts "[#{i+1}]".yellow + t.green
    end

    puts msgs['table_ask'].white
    input = STDIN.gets.chomp # TODO: validates the enter
    puts msgs['table_choices'].white
    configs['tools'].each_with_index do |t,i|
      puts "[#{i+1}]".yellow + t.green if input.split.include?("#{i+1}")
    end
    
    confirmation
    configs['tools'].each_with_index do |t,i|
      sh "rake apply[#{t}]" if input.split.include?("#{i+1}")
    end
    
  end
    
  desc 'Prepare your table'
  task :init_table do
    puts msgs['init_table_start'].yellow
    cookbooks=[]
    Dir.foreach(COOKBOOK_DIR) do |d|
      cookbooks.push(d) if not /\./.match(d)
    end
    configs['tools']=cookbooks
    write_yml(configs)
    puts msgs['success_init_table'].green
  end
end

def confirmation
  puts "Do you want to continue? [Y/n]"
  input = STDIN.gets.chomp
  case input.upcase
  when "Y",""
    puts "Continue task...".light_blue
  when "N"
    puts "Breaking task. Exiting...".red
    exit
  else
    puts "Invalid argument. Exiting...".yellow
    confirmation
  end
end

# Used by the init_table task
def write_yml(yml)
  File.open(CONFIG_FILE,'w') do |file|
    file.write(YAML.dump(yml))
  end
end
