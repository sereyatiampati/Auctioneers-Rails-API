class BidMailer < ApplicationMailer
    def winning_bidder(buyer)
        @bid = params[:bid]
        @product = Product.find_by(id: @bid.product_id)
        @buyer = buyer

        mail(to: @buyer.email,
        subject: 'Congratulations! You won the Bid🥳' )
    end
end
