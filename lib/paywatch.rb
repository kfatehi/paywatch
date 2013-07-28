require "paywatch/version"
require 'etc'
require 'moneta'

module Paywatch
  def self.store
    @store ||= begin
      path = File.join("#{self.home}", "#{self.env}")
      FileUtils.mkdir_p path
      yaml_file = File.join path, 'paywatch.yaml'
      FileUtils.touch yaml_file
      Moneta.new :YAML, :file => yaml_file
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
