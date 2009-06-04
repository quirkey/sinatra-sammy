require 'erb'

module Sinatra
  module Sammy
    
    module Helpers

      def sammy(sammy_options = {})
        @sammy_options = sammy_options
        puts "here the options are: " +sammy_options.inspect
        ERB.new(File.read(File.join(File.dirname(__FILE__), 'sammy.erb'))).result(binding)
      end
      
      def jquery_js
        if production?
          %{<script 
              type="text/javascript" 
              src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js">
            </script>}
        else
          %{<script type="text/javascript" charset="utf-8">
            #{File.read(vendor_path('jquery-1.3.2.min.js'))}
          </script>}
        end
      end
      
      def sammy_js
        File.read(vendor_path('sammy.min.js'))
      end
      
      private
      def vendor_path(file)
        File.join(File.dirname(__FILE__), '..', '..', 'vendor', file)
      end
      
    end
    
    def self.registered(app)
      app.helpers ::Sinatra::Sammy::Helpers
      
      app.before do
        self.class.layout { '' } if params['_sammy']
      end
    end
    
  end
end