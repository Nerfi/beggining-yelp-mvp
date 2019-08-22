require 'faker'


5.times do |restaurants_attributes|
  restaurants_attributes = [
    {
     name: Faker::Company.bs,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.cell_phone,
    category:   'chinese'

    }
  ]

  Restaurant.create!(restaurants_attributes)
end
  puts "done"
