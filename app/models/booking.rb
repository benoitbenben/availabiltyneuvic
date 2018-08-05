class Booking < ApplicationRecord
  belongs_to :house
  belongs_to :user
  has_many :guests, dependent: :destroy
end

#  pour guest : dependent : :destroy du booking_id
  # class Portfolio < ApplicationRecord
  #     has_many :technologies, dependent: :destroy
  #     accepts_nested_attributes_for :technologies,
