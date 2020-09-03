class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_instruments
  has_many :requests
  has_many :posts
  has_many :instruments, :through => :user_instruments
  has_one_attached :profile_image

  accepts_nested_attributes_for :user_instruments
end
