class Instrument < ApplicationRecord
  has_many :user_instruments
  has_many :jam_session_instruments, dependent: :destroy
  # has_many :users, :through => :user_instruments
end
