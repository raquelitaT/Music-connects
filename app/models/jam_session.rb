class JamSession < ApplicationRecord
  has_many :requests
  has_many :posts
  belongs_to :user
  has_one_attached :image
end
