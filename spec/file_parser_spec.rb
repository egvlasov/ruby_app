require 'file_parser'

describe FileParser do
  let(:parser) { FileParser.new }
  let(:file_path) { 'webserver.log' }
  let(:file_content) { '/help_page/1 11.22.33.44' }
  let(:page) { '/help_page/1' }
  let(:expected_result) { ['11.22.33.44', '11.22.33.44'] }

  describe '#parse_file' do
    it 'returns all pages info from a log file' do
      allow(File).to receive(:foreach).with(file_path).and_yield(file_content).and_yield(file_content)
      expect(parser.parse_file(file_path)[page].visits).to eq(expected_result)
    end
  end
end
