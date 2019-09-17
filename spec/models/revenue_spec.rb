require "rails_helper"

RSpec.describe Revenue, type: :model do
  context "Associations" do
    it{is_expected.to belong_to(:tour)}
  end
end
