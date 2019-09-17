require "rails_helper"

RSpec.describe Review, type: :model do
  context "Associations" do
    it{is_expected.to belong_to(:user)}
    it{is_expected.to belong_to(:tour)}
    it{is_expected.to have_many(:comments).dependent :destroy}
    it{is_expected.to have_many(:likes).dependent :destroy}
    it{is_expected.to have_one(:picture).dependent :destroy}
  end
end
