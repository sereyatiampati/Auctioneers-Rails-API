class SellerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :user_type

  has_many :products

  def user_type
    "Seller"
  end
end
