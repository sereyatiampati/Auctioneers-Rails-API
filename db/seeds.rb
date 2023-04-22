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
    starting_price: 350,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://m.media-amazon.com/images/I/81W3UaumB2L._AC_UL400_.jpg",
    category_id: 3
  },
  {
    name: "Addidas White Sneakers",
    description: "Adidas white sneakers are popular for both athletic and casual wear and are known for their comfort, durability, and style.",
    starting_price: 450,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682167105/Auctioneers/Products%20images/irene-kredenets-dwKiHoqqxk8-unsplash_2_fjmhbo.jpg",
    category_id: 3
  },
  {
    name: "Apple Watch SE",
    description: "Powerful sensors for insights about your health and fitness. Innovative safety features. Convenient ways to stay connected",
    starting_price: 800,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682150839/Auctioneers/Products%20images/performance_hero__cxya4f2p5euu_large_f9slwt.jpg",
    category_id: 1
  },
  {
    name: "M2 Chip MacBook Pro 13",
    description: "The M2 chip and macOS give MacBook Pro security and privacy features beyond anything in its class.",
    starting_price: 1200,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://www.apple.com/v/macbook-pro-13/p/images/overview/hero_endframe__bsza6x4fldiq_large.jpg",
    category_id: 1
  },
  {
    name: "MacBook Pro 16 M2 Chip",
    description: "Sleek design, powerful hardware specifications, and advanced features such as Retina displays, Touch Bar, and Touch ID",
    starting_price: 1300,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1681796641/Auctioneers/Products%20images/macbook-g487f21193_1920_fd6b5l.png",
    category_id: 1
  },
  {
    name: "Addidas White Sneakers",
    description: "Adidas white sneakers are popular for both athletic and casual wear and are known for their comfort, durability, and style.",
    starting_price: 300,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1681476283/cld-sample-5.jpg",
    category_id: 3
  },
  {
    name: "IKEA Beige Couch",
    description: "Sofa, Totebo light beige",
    starting_price: 300,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://plus.unsplash.com/premium_photo-1673548917207-8747dffd1391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hY2Jvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    category_id: 3
  },
  {
    name: "Mac Pro Display XDR",
    description: "A brilliant 32-inch 6K Retina display, apple most advanced for pros.",
    starting_price: 1500,
    start_date: DateTime.now,
    end_date: DateTime.now + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682152513/Auctioneers/Products%20images/hero__fkyiyagbj7yy_large_ufrele.jpg",
    category_id: 1
  }
])

##Bids
Bid.create(bid_amount: 10.0, bid_time: DateTime.now, user_id: 1, product_id: 2)
Bid.create(bid_amount: 15.0, bid_time: DateTime.now, user_id: 3, product_id: 3)
Bid.create(bid_amount: 20.0, bid_time: DateTime.now, user_id: 2, product_id: 1)



puts "Away we Go 🏁"

  
