require "paywatch/version"
require "paywatch/gui"

module Paywatch
  def self.env
    ENV['RACK_ENV'] ||= 'production'
  end

  def self.home
    File.join Etc.getpwuid.dir, '.paywatch'
  end
end
