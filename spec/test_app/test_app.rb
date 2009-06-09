require 'haml'

class TestApp < Sinatra::Default
  set :root, File.dirname(__FILE__)
  
  register Sinatra::Sammy
  
  get '/' do
    haml :index
  end
  
  get '/user/:name' do
    @name = params['name']
    haml :user
  end
  
  post '/user' do
    @name = params['name'] + " POSTED"
    haml :user
  end
  
end
