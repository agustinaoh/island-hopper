class Island < ApplicationRecord
  belongs_to :user
  has_many_attached :photos

  # TODO: validate inputs
  # FIXME: shouldn't create empty island

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
