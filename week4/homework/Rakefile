require 'rake'
require 'rspec/core'
require 'rspec/core/rake_task'


desc "Run specs"
RSpec::Core::RakeTask.new do |task|
  task.pattern = "./spec/*_spec.rb"
  task.rspec_opts = ['--format progress']
end

desc "Run tests"
task :test do
  Rake::Task['spec'].invoke
end

task :default => [:test]
