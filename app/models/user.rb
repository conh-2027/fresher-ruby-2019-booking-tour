class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable
  has_many :likes, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :bank_accounts, dependent: :destroy
  has_one :picture, as: :picturetable, dependent: :destroy
  VALID_EMAIL_REGEX = Settings.users.email.regex
  validates :name, presence: true,
    length: {maximum: Settings.users.name.max_length}
  validates :email, presence: true,
    length: {maximum: Settings.users.email.max_length},
    format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}
  validates :password, presence: true, allow_nil: true
  accepts_nested_attributes_for :picture, allow_destroy: true
end
