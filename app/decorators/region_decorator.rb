class RegionDecorator < Draper::Decorator
  delegate_all

  def map_data
    pubs.decorate.map(&:map_data)
  end
end
