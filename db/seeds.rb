Restaurant.destroy_all
Review.destroy_all

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Team.creature,
    address: Faker::Address.full_address,
    category: 'french'
  )
  5.times do
    Review.create!(
      content: Faker::Team.name,
      rating: Random.rand(0..5),
      restaurant: restaurant
    )
  end
end
