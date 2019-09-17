class Review < ApplicationRecord
  belongs_to :user
  belongs_to :tour
  has_one :picture, as: :picturetable, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
end
