class SellerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :user_type, :user_id

  has_many :products

  def user_type
    "Seller"
  end
end
