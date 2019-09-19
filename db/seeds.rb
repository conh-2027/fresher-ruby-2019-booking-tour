10.times do
  Category.create(
    name: FFaker::Name.first_name
  )
end

10.times do
  Tour.create(
    name:  FFaker::Name.last_name,
    description:  FFaker::Name.name,
    duration: rand(1..10),
    price: rand(1..20),
    category_id: Category.ids.sample
  )
end
