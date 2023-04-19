class Product < ApplicationRecord
    has_many :bids
    has_many :users, through: :bids
    belongs_to :category
end
