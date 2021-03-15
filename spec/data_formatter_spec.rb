require 'data_formatter'

describe DataFormatter do
  let(:pages_info) { { '/first' => double, '/second' => double } }
  let(:metric) { :total_views }
  let(:expected_result) { ['/second 3 visits', '/first 2 visits'] }

  describe '.format_data' do
    it 'returns sorted and formatted statistics by given metric' do
      allow(pages_info['/first']).to receive(:total_views).and_return(2)
      allow(pages_info['/second']).to receive(:total_views).and_return(3)
      expect(DataFormatter.format_data(pages_info, metric)).to eq(expected_result)
    end
  end
end
