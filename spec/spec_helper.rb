require 'sinatra'
require 'rack/test'

Sinatra::Default.set(
  :environment => :test,
  :run => false,
  :raise_errors => true,
  :logging => false
)

# The lib
require File.join(File.dirname(__FILE__), '..', 'lib', 'sinatra', 'sammy.rb')
# The test app
require File.join(File.dirname(__FILE__), 'test_app', 'test_app.rb')

module TestHelper
  
  def app
    # change to your app class if using the 'classy' style
    TestApp.new
  end
  
  def body
    last_response.body.join('')
  end
  
  def status
    last_response.status
  end
  
  include Rack::Test::Methods

end

require 'bacon'

Bacon::Context.send(:include, TestHelper)
