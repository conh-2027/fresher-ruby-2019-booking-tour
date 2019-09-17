require "rails_helper"

RSpec.describe Tour, type: :model do
  context "Associations" do
    it{is_expected.to have_many(:bookings).dependent :destroy}
    it{is_expected.to have_many(:ratings).dependent :destroy}
    it{is_expected.to have_many(:revenues).dependent :destroy}
    it{is_expected.to have_many(:reviews).dependent :destroy}
    it{is_expected.to have_one(:picture).dependent :destroy}
    it{is_expected.to belong_to(:category)}
  end
end
