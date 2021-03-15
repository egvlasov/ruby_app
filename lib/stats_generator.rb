require_relative 'file_parser'
require_relative 'data_formatter'
require_relative 'stats_printer'

class StatsGenerator
  def initialize
    @file_parser = FileParser.new
  end

  def generate_stats(file, metric = :all)
    pages_info = @file_parser.parse_file(file)
    
    case metric
    when :all
      DataFormatter::METRICS.each_key do |single_metric|
        formatted_stats = DataFormatter.format_data(pages_info, single_metric)
        StatsPrinter.print_stats(formatted_stats)
      end
    else
      formatted_stats = DataFormatter.format_data(pages_info, metric)
      StatsPrinter.print_stats(formatted_stats)
    end
  end
end
