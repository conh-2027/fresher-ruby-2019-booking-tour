class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable
  has_many :likes, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bank_accounts, dependent: :destroy
  has_one :picture, as: :picturetable, dependent: :destroy
end
