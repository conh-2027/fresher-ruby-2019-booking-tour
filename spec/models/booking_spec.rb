require "rails_helper"

RSpec.describe Booking, type: :model do
  context "Associations" do
    it{is_expected.to belong_to(:user)}
    it{is_expected.to belong_to(:tour)}
  end
end
