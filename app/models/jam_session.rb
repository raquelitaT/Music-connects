class JamSession < ApplicationRecord
  has_many :requests, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :jam_session_instruments, dependent: :destroy
  has_many :instruments, through: :jam_session_instruments
  belongs_to :user
  has_one_attached :image
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  accepts_nested_attributes_for :jam_session_instruments
  scope :upcoming, -> { where(["ends_at > ?", DateTime.now]) }
end
