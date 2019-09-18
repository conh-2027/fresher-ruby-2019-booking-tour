require "rails_helper"

RSpec.describe User, type: :model do
  context "Associations" do
    it{is_expected.to have_many(:likes).dependent :destroy}
    it{is_expected.to have_many(:ratings).dependent :destroy}
    it{is_expected.to have_many(:comments).dependent :destroy}
    it{is_expected.to have_many(:bookings).dependent :destroy}
    it{is_expected.to have_many(:bank_accounts).dependent :destroy}
    it{is_expected.to have_one(:picture).dependent :destroy}
    it{is_expected.to have_many(:reviews).dependent :destroy}
  end
end
