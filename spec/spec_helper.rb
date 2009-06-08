require 'sinatra'
require 'rack/test'

Sinatra::Default.set(
  :environment => :test,
  :run => false,
  :raise_errors => true,
  :logging => false,
  :methodoverride => false
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
  
  def render_sammy(sammy_options = {})
    @count ||= 0
    instance_eval <<-EOT
    app.class.get "/other/#{@count}" do
      sammy(#{sammy_options.inspect})
    end
    EOT
    get "/other/#{@count}"
    status.should == 200
    @count += 1
    body
  end
  
  include Rack::Test::Methods

end

require 'bacon'

Bacon::Context.send(:include, TestHelper)
