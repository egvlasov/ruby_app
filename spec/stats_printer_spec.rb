require 'stats_printer'

describe StatsPrinter do
  let(:stats) { ['/first 3 visits', '/second 2 visits'] }
  let(:expected_result) { "/first 3 visits\n/second 2 visits\n" }

  describe '.print_stats' do
    it 'prints given stats' do
      expect do
        StatsPrinter.print_stats(stats)
      end.to output(expected_result).to_stdout
    end
  end
end
