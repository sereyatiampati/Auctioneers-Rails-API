class Buyer < ApplicationRecord
    has_many :bids
    has_many :products, through: :bids
    
end
