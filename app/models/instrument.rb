class Instrument < ApplicationRecord
  has_many :user_instruments
  has_many :instruments, :through => :user_instruments
end
