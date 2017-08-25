class PagesController < ApplicationController
  decorates_assigned :map_region
  REGION_SLUGS = %W(central south north east west)

  def home
    @map_region = Region.find_by_slug(REGION_SLUGS.first).decorate
    @regions = REGION_SLUGS.map { |slug| Region.find_by_slug(slug) }.compact
  end
end
