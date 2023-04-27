class Product < ApplicationRecord
    has_many :bids, dependent: :destroy
    has_many :buyers, through: :bids, dependent: :destroy
    belongs_to :category, dependent: :destroy
    validates :starting_price, {numericality: true}

    belongs_to :seller, dependent: :destroy
end
