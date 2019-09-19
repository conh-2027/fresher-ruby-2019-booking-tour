FactoryBot.define do
  factory :tour do |f|
    f.name  {FFaker::Name.last_name}
    f.description  {FFaker::Name.name}
    f.duration { rand(1..10)}
    f.price {rand(1..20)}
    f.category_id {FactoryBot.create :category}
  end
end
