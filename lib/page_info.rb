class PageInfo
  attr_reader :visits

  def initialize
    @visits = []
  end

  def total_views
    @visits.length
  end

  def unique_views
    @visits.uniq.length
  end
end
