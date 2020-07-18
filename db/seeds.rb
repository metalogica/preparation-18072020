puts "Creating 5 products..."

5.times do 
    product = Product.create!(
        name: Faker::Company.name,
        tagline: Faker::Company.catch_phrase
    )
    puts "Created #{product.name} created!"
end

puts "Seed completed."