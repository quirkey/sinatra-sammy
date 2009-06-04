require 'spec_helper'

describe 'Sinatra::Sammy' do
  
  describe 'when included in an app' do
    
    it 'includes the sammy_js helper' do
      app.should.respond_to :sammy
    end
    
    it 'returns the routes without a layout when passing ?_sammy=true' do
      get '/?_sammy=true'
      body.should.not.match(/html/m)
    end
    
  end
  
  describe '#sammy' do
    
    it 'pulls the sammy.min file from vendor' do

    end
    
    it 'renders a default sammy application with catch all routes' do
      
    end
    
    describe 'when passed options' do      
      it 'sets the options on the sammy app' do
        
      end
    end
  end
end