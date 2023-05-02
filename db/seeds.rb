puts "🚦 Lights Out"


##Users
u1 = User.create(username: "john_doe", password: "password123", email: "john@example.com", user_type: "Buyer")
u2 = User.create(username: "jane_doe", password: "password456", email: "jane@example.com", user_type: "Buyer")
u3 = User.create(username: "jim_smith", password: "password789", email: "jim@example.com", user_type: "Seller")
u4 = User.create(username: "k-2", password: "89", email: "k2@example.com", user_type: "Seller")
u5 = User.create(username: "don", password: "dawn", email: "dwn2@example.com", user_type: "Seller")
u6 = User.create(username: "lol", password: "9", email: "lol@example.com", user_type: "Seller")
u7 = User.create(username: "rk", password: "004", email: "randy.kipkurui4@gmail.com", user_type: "Buyer")

# Buyers
b1 = Buyer.create(username: "john_doe", email: "john@example.com", user_id: 1)
b2 = Buyer.create(username: "jane_doe", email: "jane@example.com", user_id: 2)
b3 = Buyer.create(username: "rk", email: "randy.kipkurui4@gmail.com", user_id: u7.id)

# Sellers
Seller.create(username: "jim_smith", email: "jim@example.com", user_id: 3)
Seller.create(username: "k-2", email: "k2@example.com", user_id: 4)
Seller.create(username: "don", email: "dwn2@example.com", user_id: 5)
Seller.create(username: "lol", email: "lol@example.com", user_id: 6)


##Categories
Category.create(category_name: "Smart Phones", category_image: "https://i.ebayimg.com/images/g/H2YAAOSw8KthE6N8/s-l500.jpg")

Category.create(category_name: "Clothing", category_image: "https://shopgoodwillimages.azureedge.net/production/General/img-cat-clothing.webp")

Category.create(category_name: "Smart Watches", category_image: "https://media.istockphoto.com/id/1380063784/photo/smart-watch-close-up-on-a-white-background-3d-render.jpg?b=1&s=170667a&w=0&k=20&c=YE-ayMaexI7kjc5C0LaZeMAXUDYSYRY9z2VMW4_Jt5U=")

Category.create(category_name: "Home Decor", category_image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682797111/flowerpots-gb74b1410a_1920_v45jjl.jpg")

Category.create(category_name: "Jewellery & Gemstones", category_image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682793911/b5e95b62-4cca-427e-8e70-9348b16bab0crown_0427t1_1_wv2eon.png")

Category.create(category_name: "Washing Machines", category_image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682796630/oli-woodman-nUL_PP69IPA-unsplash_lukes0.jpg")

Category.create(category_name: "Smart Televisions", category_image: "https://ibid.modeltheme.com/vuejs/img/smartTv.db3e2cd1.jpg")

Category.create(category_name: "Laptops", category_image: "https://ibid.modeltheme.com/vuejs/img/laptop-cat1.ffd64937.jpg")

Category.create(category_name: "Headphones", category_image: "https://images.unsplash.com/photo-1547932087-59a8f2be576e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjF8fGhlYWRwaG9uZXMlMjAlMjYlMjBzbWFydHdhdGNoZXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")

Category.create(category_name: "Vacuum Cleaners", category_image: "https://images.unsplash.com/photo-1600322305530-45714a0bc945?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dmFjdXVtJTIwY2xlYW5lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")

Category.create(category_name: "Household Items", category_image: "https://plus.unsplash.com/premium_photo-1668614524295-c3bb5bb3a2b2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aG91c2Vob2xkJTIwSXRlbXN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
Category.create(category_name: "Computers & Accessories", category_image: "https://images.unsplash.com/photo-1545875615-86f54b81a82d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3VydmVkJTIwdHZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")



Product.create([
  {
    name: "Apple iPhone 13 Pro Max",
    description: "The latest iPhone with A15 Bionic chip and ProMotion display. Internal Storage: 256GB and 6gb RAM",
    starting_price: 1000,
    start_date: Date.today,
    end_date: Date.today + 7.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682172202/Auctioneers/Products%20images/phuc-khang-mobile-FJ4OeNnDZRM-unsplash_qygpb7.jpg",
    category_id: 1,
    seller_id: 1
  },
  {
    name: "Apple MacBook Pro 16 M2 Chip",
    description: "Sleek design, powerful hardware specifications, and advanced features such as Retina displays, Touch Bar, and Touch ID",
    starting_price: 1300,
    start_date: Date.today,
    end_date: Date.today + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682182246/Auctioneers/Products%20images/Artboard-1-copy_300x-100-65-1-1.jpg_j4l1sz.webp",
    category_id: 8,
    seller_id: 1
  },
  {
    name: "IKEA Rustic Coffee-Table",
    description: "A handmade coffee table made from reclaimed wood.",
    starting_price: 350,
    start_date: Date.today,
    end_date: Date.today + 3.days,
    image: "https://m.media-amazon.com/images/I/81W3UaumB2L._AC_UL400_.jpg",
    category_id: 4,
    seller_id: 1
  },
  {
    name: "Adidas White Sneakers",
    description: "Adidas white sneakers are popular for both athletic and casual wear and are known for their comfort, durability, and style.",
    starting_price: 450,
    start_date: Date.today,
    end_date: Date.today + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682167105/Auctioneers/Products%20images/irene-kredenets-dwKiHoqqxk8-unsplash_2_fjmhbo.jpg",
    category_id: 2,
    seller_id: 2
  },
  {
    name: "Apple Watch SE",
    description: "Powerful sensors for insights about your health and fitness. Innovative safety features. Convenient ways to stay connected",
    starting_price: 800,
    start_date: Date.today,
    end_date: Date.today + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682168389/Auctioneers/Products%20images/swim__fgeofjpbekii_large_n4kqun.jpg",
    category_id: 3,
    seller_id: 2
  },
  {
    name: "Leather Jacket: Black",
    description: "A stylish black leather jacket for men or women.",
    starting_price: 200,
    start_date: Date.today,
    end_date: Date.today + 5.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682149837/Auctioneers/Products%20images/lea-ochel-nsRBbE6-YLs-unsplash_uwp60e.jpg",
    category_id: 2,
    seller_id: 3
  },
  {
    name: "Apple Mac Pro Display XDR",
    description: "A brilliant 32-inch 6K Retina display, apple most advanced for pros.",
    starting_price: 1500,
    start_date: Date.today,
    end_date: Date.today + 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682152513/Auctioneers/Products%20images/hero__fkyiyagbj7yy_large_ufrele.jpg",
    category_id: 12,
    seller_id: 3
  },
  {
    name: "IKEA Beige Couch",
    description: "Sofa, Totebo light beige",
    starting_price: 300,
    start_date: Date.today,
    end_date: Date.today + 3.days,
    image: "https://plus.unsplash.com/premium_photo-1673548917207-8747dffd1391?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1hY2Jvb2t8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    category_id: 4,
    seller_id: 3
  },
  {
    name: "Adidas White Sneakers",
    description: "Adidas white sneakers are popular for both athletic and casual wear and are known for their comfort, durability, and style.",
    starting_price: 300,
    start_date: Date.today - 40.days,
    end_date: Date.today,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682169012/Auctioneers/Products%20images/cld-sample-5_bhtq4u.jpg",
    category_id: 2,
    seller_id: 4
  },
  {
    name: "Toshiba Notebook with 500GB HDD & 8GB RAM",
    description: "This laptop is powered by an Intel Core i5-5200U (5th Gen) processor, coupled with 4 GB of RAM, and has 500 GB HDD storage at this price point.",
    starting_price: 1200,
    start_date: Date.today - 12.days,
    end_date: Date.today,
    image: "https://res.cloudinary.com/dxfq3iotg/image/upload/v1562074043/234.png",
    category_id: 8,
    seller_id: 4
  },
  {
    name: "Series 7 Apple Watch",
    description: "Temperature sensing, Cycle tracking, creating run routes. What's not to love?",
    starting_price: 25000,
    start_date: Date.today - 7.days,
    end_date: Date.today - 3.days,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682410306/daniel-korpai-hbTKIbuMmBI-unsplash_a7kufr.jpg",
    category_id: 3,
    seller_id: 3
  },
  {
    name: "Wired Headphones",
    description: "Active Noise Cancellation(ANC) of up to 50db, Over-ear Design, and 30mm of the sound engine to give you excellent quality audio..",
    starting_price: 1200,
    start_date: Date.today - 10.days,
    end_date: Date.today,
    image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682410352/kiran-ck-LSNJ-pltdu8-unsplash_ngzfvp.jpg",
    category_id: 9,
    seller_id: 4
  },
  {
    name: "ANC Wireless Headphones",
    description: "Over-ear Design, 5.3 Bluetooth",
    starting_price: 5200,
    start_date: Date.today,
    end_date: Date.today + 7.days,
    image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d2lyZWxlc3MlMjBoZWFkcGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 9,
    seller_id: 4
  },
  {
    name: "Air Purifier",
    description: "Works better than a diffuser. Cleanses your Palace.",
    starting_price: 1000,
    start_date: Date.today - 5.days,
    end_date: Date.today + 3.days,
    image: "https://images.unsplash.com/photo-1634585605949-8f1e029af923?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YWlyJTIwcHVyaWZpZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    category_id: 11,
    seller_id: 2
  },
  {
    name: "Huawei Smart Watch",
    description: "Pin-point location tracking. Amazing battery life.",
    starting_price: 12000,
    start_date: Date.today - 15.days,
    end_date: Date.today,
    image: "https://images.unsplash.com/photo-1655215920713-94440bf7213f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aHVhd2VpJTIwc21hcnQlMjB3YXRjaHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 3,
    seller_id: 3
  },
  {
    name: "Automated Vacuum Cleaner",
    description: "Works based on a scheule you set.",
    starting_price: 15000,
    start_date: Date.today - 1.days,
    end_date: Date.today + 5.days,
    image: "https://images.unsplash.com/photo-1653990480360-31a12ce9723e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YXV0b21hdGljJTIwdmFjdXVtJTIwY2xlYW5lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 10,
    seller_id: 2
  },
  {
    name: "Light weight vacuum cleaner",
    description: "Light and rechargeable vacuum.",
    starting_price: 8000,
    start_date: Date.today - 5.days,
    end_date: Date.today + 1.days,
    image: "https://images.unsplash.com/photo-1527515673510-8aa78ce21f9b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dmFjdXVtJTIwY2xlYW5lcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 10,
    seller_id: 1
  },
  {
    name: "Front Load Washing Machine",
    description: "Uses water efficiently.",
    starting_price: 32000,
    start_date: Date.today - 10.days,
    end_date: Date.today - 1.days,
    image: "https://images.unsplash.com/photo-1626806787426-5910811b6325?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHdhc2hpbmclMjBtYWNoaW5lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 6,
    seller_id: 3
  },
  {
    name: "Top Load Washing Machine",
    description: "20L capacity.",
    starting_price: 20000,
    start_date: Date.today - 1.days,
    end_date: Date.today + 12.days,
    image: "https://images.unsplash.com/photo-1624381987697-3f93d65ddeea?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fHdhc2hpbmclMjBtYWNoaW5lfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 6,
    seller_id: 3
  },
  {
    name: "Android Smart TV",
    description: "Connect with your home devices swiftly.",
    starting_price: 42000,
    start_date: Date.today - 7.days,
    end_date: Date.today + 9.days,
    image: "https://images.unsplash.com/photo-1611484550037-d5a0da2b1446?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YW5kcm9pZCUyMHR2fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    category_id: 7,
    seller_id: 2
  },
  {
    name: "Curved monitor",
    description: "Tell me why you'll ever want to leave your house again.",
    starting_price: 120000,
    start_date: Date.today - 10.days,
    end_date: Date.today - 2.days,
    image: "https://images.unsplash.com/photo-1545875615-86f54b81a82d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y3VydmVkJTIwdHZ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    category_id: 12,
    seller_id: 2
  }
])

##Bids
b1.bids.create(bid_amount: 1000.0, bid_time: Date.today, product_id: 2)
b2.bids.create(bid_amount: 1500.0, bid_time: Date.today, product_id: 3)
b2.bids.create(bid_amount: 2000.0, bid_time: Date.today, product_id: 1)
b3.bids.create(bid_amount: 2000.0, bid_time: Date.today, product_id: 12)
b2.bids.create(bid_amount: 5000.0, bid_time: Date.today, product_id: 10)
b2.bids.create(bid_amount: 20000.0, bid_time: Date.today, product_id: 10)
b1.bids.create(bid_amount: 150000.0, bid_time: Date.today, product_id: 21)
b1.bids.create(bid_amount: 22000.0, bid_time: Date.today, product_id: 19)
b1.bids.create(bid_amount: 500.0, bid_time: Date.today, product_id: 4)
b3.bids.create(bid_amount: 600.0, bid_time: Date.today, product_id: 4)
b2.bids.create(bid_amount: 46000.0, bid_time: Date.today, product_id: 20)
b1.bids.create(bid_amount: 16000.0, bid_time: Date.today, product_id: 16)


puts "Away we Go 🏁"

  
