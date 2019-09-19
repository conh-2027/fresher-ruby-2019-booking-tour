FactoryBot.define do
  factory :category do |f|
    f.name {FFaker::Name.last_name}
  end
end
