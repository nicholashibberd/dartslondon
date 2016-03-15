class SitemapsController < ApplicationController
  def index
    @regions = Region.all
    @pubs = Pub.all
  end
end
