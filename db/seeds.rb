# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "🌱 Seeding database..."

# Clear existing data
puts "Clearing existing data..."
User.destroy_all

# Create users
puts "Creating users..."

users = [
  { email: 'rap.ramos@htw.com.au', name: 'Rap Ramos' },
  { email: 'admin@htw.com.au', name: 'Admin User' },
  { email: 'jane.admin@htw.com.au', name: 'Jane Admin' },
  { email: 'beta.tester@htw.com.au', name: 'Beta Tester' },
  { email: 'john.beta@htw.com.au', name: 'John Beta' },
  { email: 'premium.user@htw.com.au', name: 'Premium User' },
  { email: 'enterprise.user@htw.com.au', name: 'Enterprise User' },
  { email: 'regular1@htw.com.au', name: 'Regular User 1' },
  { email: 'regular2@htw.com.au', name: 'Regular User 2' },
  { email: 'regular3@htw.com.au', name: 'Regular User 3' }
]

users.each do |user_data|
  User.create!(user_data)
  puts "  ✓ Created #{user_data[:name]}"
end