require "rails_helper"

RSpec.describe Category, type: :model do
  context "Associations" do
    it{is_expected.to have_many(:tours).dependent :destroy}
  end
end
