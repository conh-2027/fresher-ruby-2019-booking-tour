class Tour < ApplicationRecord
  belongs_to :category
  has_one :picture, as: :picturetable, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :ratings, dependent: :destroy
  has_many :revenues, dependent: :destroy
  has_many :reviews, dependent: :destroy

  scope :last_tours, ->{order created_at: :desc}
  delegate :name, to: :category, prefix: true, allow_nil: true
  accepts_nested_attributes_for :picture, allow_destroy: true

  validates :name, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates_numericality_of :duration,
    greater_than_or_equal_to: Settings.tours.duration.day_number
  validates_numericality_of :price,
    greater_than_or_equal_to: Settings.tours.price.default_price
  TOUR_PARAMS = [:name, :description, :duration, :price, :category_id,
    picture_attributes: [:id, :picture_link, :_destroy]].freeze
end
