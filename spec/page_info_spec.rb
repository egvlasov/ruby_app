require 'page_info'

describe PageInfo do
  let(:page_info) { PageInfo.new }
  before { page_info.visits << '11.11.11.11' << '22.22.22.22' << '11.11.11.11' }

  describe '#total_views' do
    it 'returns number of total views of a page' do
      expect(page_info.total_views).to eq(3)
    end
  end

  describe '#unique_views' do
    it 'returns number of unique views of a page' do
      expect(page_info.unique_views).to eq(2)
    end
  end
end
