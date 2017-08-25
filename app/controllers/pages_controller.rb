class PagesController < ApplicationController
  decorates_assigned :map_region

  def home
    @map_region = Region.find_by_slug('central').decorate
    @pubs = Pub.take(10)
  end
end
