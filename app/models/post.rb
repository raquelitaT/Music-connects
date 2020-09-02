class Post < ApplicationRecord
  belongs_to :jamsession
  belongs_to :user
end
