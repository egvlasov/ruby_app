require 'stats_generator'

describe StatsGenerator do
  let(:file_path) { 'webserver.log' }
  let(:file_content) { '/help_page/1 11.22.33.44' }
  let(:stats_output_no_metric) { "/help_page/1 1 visits\n/help_page/1 1 unique views\n" }
  let(:metric) { :total_views }
  let(:stats_output_with_metric) { "/help_page/1 1 visits\n" }

  describe '#generate_stats' do
    context 'metric not specified' do
      it 'generates stats for each metric' do
        allow(File).to receive(:foreach).with(file_path).and_yield(file_content)
        expect do
          StatsGenerator.new.generate_stats(file_path)
        end.to output(stats_output_no_metric).to_stdout
      end
    end

    context 'metric specified' do
      it 'generates stats for specified metric' do
        allow(File).to receive(:foreach).with(file_path).and_yield(file_content)
        expect do
          StatsGenerator.new.generate_stats(file_path, metric)
        end.to output(stats_output_with_metric).to_stdout
      end
    end
  end
end
