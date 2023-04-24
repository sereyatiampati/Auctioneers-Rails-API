class Bid < ApplicationRecord
    belongs_to :product
    belongs_to :buyer

    # validate :bid_amount_check

    # private 

    # def bid_amount_check
    #     if bid_amount.present? && bid_amount < current_amount
    #         errors.add(:bid_amount, "cannot be lower than the current bid amount")
    #     end
    # end

    # def current_amount
    #     self.class.bid_amount
    #     debugger
    # end
end
