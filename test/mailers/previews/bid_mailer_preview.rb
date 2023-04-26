# Preview all emails at http://localhost:3000/rails/mailers/bid_mailer
class BidMailerPreview < ActionMailer::Preview
    def winning_bidder
        product = Product.create({
            name: "Series 7 Apple Watch",
            description: "Temperature sensing, Cycle tracking, creating run routes. What's not to love?",
            starting_price: 25000,
            start_date: DateTime.now - 7.days,
            end_date: DateTime.now - 5.days,
            image: "https://res.cloudinary.com/dwrwnflkr/image/upload/v1682410306/daniel-korpai-hbTKIbuMmBI-unsplash_a7kufr.jpg",
            category_id: 1,
            seller_id: 3
          })

          u1 = User.create(username: "john_doe", password: "password123", email: "john@example.com", user_type: "Buyer")
          b1 = Buyer.create(username: "john_doe", email: "john@example.com", user_id: u1.id)
        

        @bid = product.bids.create(bid_amount: 30000.0, bid_time: DateTime.now, buyer_id: b1.id)
        # buyer = Buyer.find_by(id: 1)

        BidMailer.with(bid: @bid).winning_bidder(b1)
    end
end
