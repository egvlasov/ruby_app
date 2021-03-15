class DataFormatter
  METRICS = { total_views: 'visits', unique_views: 'unique views' }

  def self.format_data(pages_info, metric)
    pages_info.sort_by { |_page, info| -info.send(metric) }.map do |page_info|
      "#{page_info.first} #{page_info.last.send(metric)} #{METRICS[metric]}"
    end
  end
end
