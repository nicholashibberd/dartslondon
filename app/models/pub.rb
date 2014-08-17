class Pub < ActiveRecord::Base
  belongs_to :region

  def to_param
    slug
  end

  def slug
    name.parameterize
  end

  def self.find_by_slug(slug)
    find do |pub|
      pub.slug == slug
    end
  end
end
