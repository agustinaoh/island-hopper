class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  # TODO: validate inputs
  # FIXME: shouldn't create empty island

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  ACCESS = ["Boat", "Helicopter", "Plane", "Swim", "Parachute"]
  acts_as_taggable_on :access # or whatever you would like to call your tag list.
  FACILITIES = ["Pool", "Sauna", "Jacuzzi", "Tennis Court", "Helicopter filed", "Volcano"]
  acts_as_taggable_on :facilities # or whatever you would like to call your tag list.
  
  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
    }

end
