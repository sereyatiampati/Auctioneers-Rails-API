class Product < ApplicationRecord
    has_many :bids
    has_many :buyers, through: :bids
    belongs_to :category
    validates :starting_price, {numericality: true}

    belongs_to :seller
end
