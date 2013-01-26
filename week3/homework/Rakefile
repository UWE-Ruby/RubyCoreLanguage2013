# a Rakefile is just ruby code

# require the gems we'll need
require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'

# we can define 'global' methods (we are adding them to Object)

# accepts an array of strings from a directory listing
#   and returns only the files
def only_files dir_list
  dir_list.select { |file| file if File.file?(file) }
end

# use the RSpec gem to create the default 'spec' task
desc "Run specs"
RSpec::Core::RakeTask.new do |task|

  # in the block we can set task options
  task.pattern = "./spec/*_spec.rb"
  task.rspec_opts = ['--format progress']

end

# add a task called test that runs the task we just defined (above)
desc "Run tests"
task :test do
  Rake::Task['spec'].invoke
end

# add our own task
#  execute this with: rake list_files
desc "List Files"
task :list_files do
  puts 'Listing of Files:'
  puts only_files Dir['*']
  system 'echo ... file list done ...'
end

# TODO #1
# make tests run by default
# running 'rake' should run your tests

# TODO #2
# 1. add a method that you write to this rakefile
# 2. write a rake task that uses the method and prints something using puts
