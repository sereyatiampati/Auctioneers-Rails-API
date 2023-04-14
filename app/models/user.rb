class User < ApplicationRecord
    has_many :bids
    has_one :role
end
