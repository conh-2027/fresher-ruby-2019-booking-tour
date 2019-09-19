class Category < ApplicationRecord
  has_many :tours, dependent: :destroy
  
  private

  def self.ransackable_attributes(auth_object = nil)
    auth_object.eql?(:admin) ? super : super & %w(name)
  end
end
