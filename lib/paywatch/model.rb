require 'static_model'
require 'fileutils'

module Paywatch
  class Model < StaticModel::Base
    def self.use_data_file name
      dir = File.join Paywatch.home, Paywatch.env, 'data'
      FileUtils.mkdir_p(dir)
      path = File.join dir, "#{name}.yaml"
      FileUtils.touch(path)
      set_data_file path
    end
  end
end
