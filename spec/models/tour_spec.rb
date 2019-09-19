require "rails_helper"

RSpec.describe Tour, type: :model do
  let(:category) {FactoryBot.create :category}
  let(:tour) {FactoryBot.create :tour, category_id: category.id}
  let(:tour1) {FactoryBot.create :tour, category_id: category.id}
  context "Associations" do
    it{is_expected.to have_many(:bookings).dependent :destroy}
    it{is_expected.to have_many(:ratings).dependent :destroy}
    it{is_expected.to have_many(:revenues).dependent :destroy}
    it{is_expected.to have_many(:reviews).dependent :destroy}
    it{is_expected.to have_one(:picture).dependent :destroy}
    it{is_expected.to belong_to(:category)}
  end
  context "validates" do
    it{should validate_presence_of :name}
    it{should validate_numericality_of :price}
    it{should validate_presence_of :description}
    it{should validate_presence_of :duration}
    it{should validate_numericality_of(:duration).is_greater_than_or_equal_to(Settings.tours.duration.day_number)}
    it{should validate_numericality_of(:price).is_greater_than_or_equal_to(Settings.tours.price.default_price)}
  end
  context "last_tours" do
    it "order tour created desc" do
      expect(Tour.last_tours).to eq [tour, tour1]
    end
  end
end
