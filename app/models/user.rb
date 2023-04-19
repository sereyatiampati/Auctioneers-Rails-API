class User < ApplicationRecord
    has_secure_password

    has_many :bids
    belongs_to :role
end
