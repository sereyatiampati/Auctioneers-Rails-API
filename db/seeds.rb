puts "🚦 Lights Out"

##Roles
r1 = Role.create(name: "buyer")
r2 = Role.create(name: "seller")

##Users
u1 = User.create(username: "john_doe", password: "password123", email: "john@example.com", role_id: r1.id)
u2 = User.create(username: "jane_doe", password: "password456", email: "jane@example.com", role_id: r1.id)
u3 = User.create(username: "jim_smith", password: "password789", email: "jim@example.com", role_id: r2.id)

##Products
# p1 = Product.create({
#     name: "iPhone 13 Pro",
#     description: "The latest iPhone with A15 Bionic chip and ProMotion display.",
#     starting_price: 1000,
#     start_date: DateTime.now,
#     end_date: DateTime.now + 7.days,
#     image: "iphone.jpg"
# })
#   p2 = Product.create({
#     name: "Leather Jacket",
#     description: "A stylish leather jacket for men or women.",
#     starting_price: 200,
#     start_date: DateTime.now,
#     end_date: DateTime.now + 5.days,
#     image: "leather_jacket.jpg"
#   })
#   p3 = Product.create({
#     name: "Rustic Coffee Table",
#     description: "A handmade coffee table made from reclaimed wood.",
#     starting_price: 300,
#     start_date: DateTime.now,
#     end_date: DateTime.now + 3.days,
#     image: "coffee_table.jpg"
#   })
##Categories
Category.create(category_name: "Electronics", category_image: "electronics.jpg")
Category.create(category_name: "Clothing", category_image: "clothing.jpg")
Category.create(category_name: "Home Decor", category_image: "homedecor.jpg")

Product.create([
  {
    name: "iPhone 13 Pro",
    description: "The latest iPhone with A15 Bionic chip and ProMotion display.",
    starting_price: 1000,
    start_date: DateTime.now,
    end_date: DateTime.now + 7.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682147646/Auctioneers/Products%20images/aram-sabah-smVUoz8CSCw-unsplash_ok1kas.jpg",
    category_id: 1
  },
  {
    name: "Leather Jacket",
    description: "A stylish leather jacket for men or women.",
    starting_price: 200,
    start_date: DateTime.now,
    end_date: DateTime.now + 5.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682147646/Auctioneers/Products%20images/aram-sabah-smVUoz8CSCw-unsplash_ok1kas.jpg",
    category_id: 2
  },
  {
    name: "Rustic Coffee Table",
    description: "A handmade coffee table made from reclaimed wood.",
    starting_price: 300,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682147646/Auctioneers/Products%20images/aram-sabah-smVUoz8CSCw-unsplash_ok1kas.jpg",
    category_id: 3
  }
])

##Bids
Bid.create(bid_amount: 10.0, bid_time: DateTime.now, user_id: 1, product_id: 2)
Bid.create(bid_amount: 15.0, bid_time: DateTime.now, user_id: 3, product_id: 3)
Bid.create(bid_amount: 20.0, bid_time: DateTime.now, user_id: 2, product_id: 1)



puts "Away we Go 🏁"

  
