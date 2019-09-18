class Tour < ApplicationRecord
  belongs_to :category
  has_one :picture, as: :picturetable, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :revenues, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
