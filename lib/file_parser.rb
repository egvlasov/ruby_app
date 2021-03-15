require_relative 'page_info'

class FileParser
  def initialize
    @pages_info = Hash.new do |pages_info, page|
      pages_info[page] = PageInfo.new
    end
  end

  def parse_file(file)
    File.foreach(file) do |line|
      @pages_info[line.split.first].visits << line.split.last
    end
    @pages_info
  end
end
