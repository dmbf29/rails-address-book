puts "Cleaning DB..."
Contact.destroy_all

CHEFS = %w[Akitaka Ali Anamol Cadeyrn Chae Eri Igor James Joe🇺🇸 Joe🇹🇭 Jonas Kevin Max Mia Mint Nicholas Pierre Ryo Ryuya Steven Sunjun Yu Yuta]

puts "Creating Contacts...."
CHEFS.each do |first_name|
  Contact.create(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    phone: Faker::PhoneNumber.phone_number,
    birthday: Faker::Date.birthday(min_age: 18, max_age: 65)
  )
end
puts "... created #{Contact.count} contacts."
