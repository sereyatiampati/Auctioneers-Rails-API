##Users
User.create(username: "john_doe", password: "password123", email: "john@example.com")
User.create(username: "jane_doe", password: "password456", email: "jane@example.com")
User.create(username: "jim_smith", password: "password789", email: "jim@example.com")

##Roles
Role.create(name: "buyer")
Role.create(name: "seller")

##Bids
Bid.create(bid_amount: 10.0, bid_time: DateTime.now)
Bid.create(bid_amount: 15.0, bid_time: DateTime.now)
Bid.create(bid_amount: 20.0, bid_time: DateTime.now)

##Categories
Category.create(category_name: "Electronics", category_image: "electronics.jpg")
Category.create(category_name: "Clothing", category_image: "clothing.jpg")
Category.create(category_name: "Home Decor", category_image: "homedecor.jpg")

##Products
Product.create(
    name: "iPhone 13 Pro",
    description: "The latest iPhone with A15 Bionic chip and ProMotion display.",
    starting_price: 1000,
    start_date: DateTime.now,
    end_date: DateTime.now + 7.days,
    image: "iphone.jpg"
  )
  Product.create(
    name: "Leather Jacket",
    description: "A stylish leather jacket for men or women.",
    starting_price: 200,
    start_date: DateTime.now,
    end_date: DateTime.now + 5.days,
    image: "leather_jacket.jpg"
  )
  Product.create(
    name: "Rustic Coffee Table",
    description: "A handmade coffee table made from reclaimed wood.",
    starting_price: 300,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "coffee_table.jpg"
  )
  
