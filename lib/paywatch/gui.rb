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
  end
end
