class Bid < ApplicationRecord
    belongs_to :product
    belongs_to :buyer

    validation :bid_amount_check

    private 

    def bid_amount_check
        if bid_amount.present? && bid_amount < current_amount
            errors.add(:bid_amount, "cannot be lower than the current bid amount")
        end
    end

    def current_amount
        user = User.find_by(id: session[:user_id])
        user.bids.bid_amount
    end
end
