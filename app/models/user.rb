class User < ApplicationRecord
    has_secure_password

    has_many :bids
    has_many :products, through: :bids
    belongs_to :role

    validates :email, presence: true
end
