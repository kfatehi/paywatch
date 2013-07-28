require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc "Check Coverage"
task :cov do
  Rake::Task[:spec].invoke
  require 'launchy'
  Launchy.open('coverage/index.html')
end

desc "Run specs"
task :spec do
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = './spec/**/*_spec.rb'
  end
end

desc "Run IRB console with app environment"
task :console do
  puts "Loading development console..."
  system("irb -r ./config/boot.rb")
end

desc "Run with shotgun"
task :shotgun do
  system('bundle exec shotgun config.ru')
end

task :default => :cov
