class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, #:registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :bookings # as renter
  # has_many :costumes # as owner
  has_many :received_bookings, through: :houses, source: :bookings #booking as an owner

  has_many :guests

  validates :email, presence: true, uniqueness: true
end



