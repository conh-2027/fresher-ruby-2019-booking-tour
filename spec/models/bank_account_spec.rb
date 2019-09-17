require "rails_helper"

RSpec.describe BankAccount, type: :model do
  context "Associations" do
    it{is_expected.to belong_to(:user)}
  end
end
