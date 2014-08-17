class Region < ActiveRecord::Base
  has_many :pubs

  def to_param
    slug
  end

  def slug
    name.parameterize
  end

  def self.find_by_slug(slug)
    find do |region|
      region.slug == slug
    end
  end
end
