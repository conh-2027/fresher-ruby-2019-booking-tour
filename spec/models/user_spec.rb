require "rails_helper"

RSpec.describe User, type: :model do

  let(:user) {FactoryBot.create(:user, name: "jamsess", password: "123123",
    password_confirmation: "123123", email: "jamse@gmail.com")}
  
  context "Associations" do
    it{is_expected.to have_many(:likes).dependent :destroy}
    it{is_expected.to have_many(:ratings).dependent :destroy}
    it{is_expected.to have_many(:comments).dependent :destroy}
    it{is_expected.to have_many(:bookings).dependent :destroy}
    it{is_expected.to have_many(:bank_accounts).dependent :destroy}
    it{is_expected.to have_one(:picture).dependent :destroy}
    it{is_expected.to have_many(:reviews).dependent :destroy}
  end

  context "validates" do
    it{is_expected.to validate_presence_of :name }
    it{is_expected.to validate_length_of(:name).is_at_most Settings.users.name.max_length}
    it{is_expected.to validate_presence_of :password }
    it{is_expected.to validate_presence_of :email }
    it{expect(user.email).to match(Settings.users.email.regex)}
    it{is_expected.to validate_length_of(:email).is_at_most Settings.users.email.max_length}
    it{is_expected.to validate_uniqueness_of(:email).case_insensitive}
  end
end
