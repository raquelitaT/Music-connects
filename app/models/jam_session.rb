class JamSession < ApplicationRecord
  has_many :requests
  has_many :posts
  belongs_to :user
  has_one_attached :image
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
