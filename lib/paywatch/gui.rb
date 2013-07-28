require 'sinatra/base'

module Paywatch
  class GUI < Sinatra::Base
    set :sessions, true
    set :foo, 'bar'

    get '/' do
      'Hello world!'
    end
  end
end
