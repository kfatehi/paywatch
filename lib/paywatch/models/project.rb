require 'securerandom'

class Project
  class << self
    def all
      Paywatch.store['projects'] ||= {}
    end

    def create params
      Paywatch.store['projects'] ||= {}
      if params.has_key? "name"
        Paywatch.store['projects'][params["name"]] = {}
      else
        raise 'project must have a name'
      end
    end
  end
end
