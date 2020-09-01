class JamSession < ApplicationRecord
  has_many :posts, :requests
  belongs_to :user
end
