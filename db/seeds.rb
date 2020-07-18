puts "Creating 5 products..."

5.times do |i|
    product = Product.create!(
        name: Faker::Company.name,
        tagline: Faker::Company.catch_phrase
    )
    puts "Created Product Number `#{i+1}` `#{product.name}`"
end

puts "Seed completed."