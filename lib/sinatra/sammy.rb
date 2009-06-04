module Sinatra
  module Sammy
   
    module Helpers
      
      def sammy(options = {})
      end
      
    end
    
    def self.registered(app)
      app.helpers ::Sinatra::Sammy::Helpers
      
      app.before do
        if params['_sammy']
          puts "CALLING"
          render :layout => false
        end
      end
    end
    
  end
end