require "paywatch/version"
require 'etc'
require 'moneta'

module Paywatch
  def self.db_file
    path = File.join("#{self.home}", "#{self.env}")
    FileUtils.mkdir_p path
    yaml_file = File.join path, 'paywatch.yaml'
    FileUtils.touch yaml_file
    yaml_file
  end

  def self.store
    @store ||= begin
      Moneta.new :YAML, :file => db_file
    end
  end

  def self.env
    ENV['RACK_ENV'] ||= 'production'
  end

  def self.home
    File.join Etc.getpwuid.dir, '.paywatch'
  end
end

require 'paywatch/models/project'
require "paywatch/api"
