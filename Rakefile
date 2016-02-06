require "chake"
require "colorize"
require "yaml"

root=Dir.getwd
CONFIG_FILE='table.yaml'
MSG_FILE='msg/msg_rake.yml'
COOKBOOK_DIR=root+'/cookbooks'

configs=YAML.load_file(CONFIG_FILE)
msgs=YAML.load_file(MSG_FILE)

desc 'Create some deps files'
task :init_table do
  puts COOKBOOK_DIR
  Dir.foreach(COOKBOOK_DIR) do |d|
    puts d
  end
end

desc 'Setting up work env'
task :serve do
  puts msgs['setup_info'].white
  configs['tools'].each do |t|
    puts "[ ]".yellow + t.green
  end
  puts msgs['table_ask'].white
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
