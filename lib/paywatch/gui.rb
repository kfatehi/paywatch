require 'sinatra/base'
require 'haml'

module Paywatch
  class GUI < Sinatra::Base
    set :sessions, true
    set :foo, 'bar'

    get '/' do
      haml :index
    end
  end
end
