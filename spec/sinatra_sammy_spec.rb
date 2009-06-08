require 'spec_helper'

describe 'Sinatra::Sammy' do
  
  describe 'when included in an app' do
        
    it 'returns routes with layout normally' do
      get '/'
      body.should.match(/html/m)
    end
    
    it 'returns the routes without a layout when passing ?_sammy=true' do
      get '/?_sammy=true'
      body.should.not.match(/html/m)
      body.should.match(/h1/)
    end
    
  end
  
  describe '#sammy' do
    
    it 'pulls the sammy.min file from vendor' do
      render_sammy.should.match(/-- Sammy --/m)
    end
    
    it 'renders a default sammy application with catch all routes' do
      render_sammy.should.match(/\$\.sammy/m)
      render_sammy.should.match(/get\(\/\\#\(\.\*\)\$\//)
    end
    
    describe 'when passed options' do      
      it 'sets the options on the sammy app' do
        render_sammy({:debug => true}).should.match(/this\.debug \= true/)
      end
    end
  end
end