class Request < ApplicationRecord
  belongs_to :jamsession, :user
end
