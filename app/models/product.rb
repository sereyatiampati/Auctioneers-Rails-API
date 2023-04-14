class Product < ApplicationRecord
    has_many :bids
    belongs_to :category
end
