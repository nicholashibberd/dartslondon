class Pub < ActiveRecord::Base
  belongs_to :region

  EASY_TO_GET_ON_BOARD_OPTIONS = [
    ["Very Easy", 5],
    ["Easy", 4],
    ["Average", 3],
    ["Not Easy", 2],
    ["Ballache", 1],
  ]

  MASS_ASSIGNABLE_FIELDS = [
    :name,
    :address,
    :description,
    :region_id,
    :number_of_dartboards,
    :easy_to_get_on_board,
    :rest_of_pub,
    :beer_selection,
    :directions,
    :quiz_machine,
  ]

  validates :easy_to_get_on_board, numericality: true
  validates :number_of_dartboards, numericality: true

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
