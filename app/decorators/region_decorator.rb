class RegionDecorator < Draper::Decorator
  delegate_all

  def map_data
    all_pubs.map { |pub| pub.decorate.map_data }
  end
end
