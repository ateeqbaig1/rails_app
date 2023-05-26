# Seed data for creating example records

# Clear existing data
User.delete_all
Address.delete_all

# Create users with addresses
user1 = User.create(name: 'John Doe')
user2 = User.create(name: 'Jane Smith')

address1 = Address.create(street: '123 Main St', city: 'New York')
address2 = Address.create(street: '456 Elm St', city: 'San Francisco')

# Associate addresses with users
user1.address = address1
user1.save

user2.address = address2
user2.save

puts 'Seed data created successfully!'
