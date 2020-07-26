puts "Creating 5 products..."

5.times do |i|
    product = Product.create!(
        name: Faker::Company.name,
        tagline: Faker::Company.catch_phrase
    )
    puts "Created Product Number `#{i+1}` `#{product.name}`"
end

User.create! email: 'richard@email.com', first_name: 'richard', last_name: 'jarram', password: 'qwerty'

puts "Seed completed."