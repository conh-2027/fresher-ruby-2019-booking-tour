require "rails_helper"

RSpec.describe Picture, type: :model do
  context "Associations" do
    it{is_expected.to belong_to(:picturetable)}
  end
end
