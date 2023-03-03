puts "🌱 Seeding spices..."

# Seed your database here

# create event instance
e1 = Event.create(
    image_url: "https://images.unsplash.com/photo-1640891175384-e599abd85c6d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1631&q=80",
    topic: "Sinatra Hackathon",
    description: "Sinatra Application for All",
    location: "Nairobi, Ngong Lane",
    datetime: "02/03/2023 12:00:00" 
    name: "Jameson Connects Kenya",
    date: "Sat, 17 Dec 2022",
    venue: "Tatu City",
    time: "06:00 PM - 11:59 PM",
    price1: "2500",
    price2: "4000"
)

#create user instance 
u1 = User.create(
    fullname: "John Doe",
    email: "jdoe@example.com",
    phonenumber: "0712345678",

)

puts "✅ Done seeding!"
