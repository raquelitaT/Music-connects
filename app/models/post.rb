class Post < ApplicationRecord
  belongs_to :jamsession, :user
end
