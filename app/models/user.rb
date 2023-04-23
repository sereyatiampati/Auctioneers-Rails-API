class User < ApplicationRecord
    has_secure_password

    
    

    validates :email, presence: true
    validates :username, uniqueness: :true
    validates :user_type, inclusion: { in: %w(Buyer Seller) }
end
