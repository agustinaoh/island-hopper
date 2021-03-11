class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_many :bookings

  # TODO: validate inputs
  # FIXME: shouldn't create empty island

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?


  ACCESS = ["Boat", "Helicopter", "Plane", "Swim", "Parachute"]
  FACILITIES = ["Pool", "Sauna", "Jacuzzi", "Tennis Court", "Helicopter filed", "Volcano"]

  include PgSearch::Model
  pg_search_scope :search_by_name_and_location,
    against: [ :name, :location ],
    using: {
      tsearch: { prefix: true }
    }

end
