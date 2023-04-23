class Product < ApplicationRecord
    has_many :bids
    has_many :buyers, through: :bids
    belongs_to :category

    belongs_to :seller
end
