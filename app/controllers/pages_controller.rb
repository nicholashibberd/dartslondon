class PagesController < ApplicationController
  def home
    @pubs = Pub.take(10)
  end
end
