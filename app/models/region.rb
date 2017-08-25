class Region < ActiveRecord::Base
  has_many :pubs
  belongs_to :parent, class_name: 'Region'
  has_many :children, class_name: 'Region', foreign_key: "parent_id"

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

  def all_pubs(other_pubs=[])
    other_pubs.concat(pubs)
    children.each do |child|
      child.all_pubs(other_pubs)
    end
    other_pubs
  end

  def latest_pubs
    pubs.take(3)
  end
end
