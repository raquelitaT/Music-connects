class Post < ApplicationRecord
  belongs_to :jam_session
  belongs_to :user
end
