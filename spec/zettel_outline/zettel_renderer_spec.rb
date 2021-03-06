require 'spec_helper'
require 'zettel_outline/zettel_renderer'

describe ZettelOutline::ZettelRenderer do
  subject(:renderer) { ZettelOutline::ZettelRenderer.new }
  
  describe 'rendering' do
    let(:contents) { double(:render => "content") }
    let(:separator) { double(:render => "separator") }
    let!(:result) { renderer.render(contents, separator) }
        
    it 'renders contents' do
      expect(contents).to have_received(:render)
    end
    
    it 'renders separator' do
      expect(contents).to have_received(:render)
    end
    
    it 'returns rendition' do
      expect(result).to eq "separatorcontent\n\n"
    end
  end
end
