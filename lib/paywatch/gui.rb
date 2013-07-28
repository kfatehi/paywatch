require 'sinatra/base'
require 'haml'

module Paywatch
  class GUI < Sinatra::Base
    get '/' do
      haml :index
    end

    get '/configure' do
      haml :configure
    end

    configure do
      if environment != :test
        require 'launchy'
        Launchy.open("http://127.0.0.1:#{settings.port}/")
      end
    end
  end
end
