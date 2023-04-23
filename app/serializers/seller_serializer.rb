class SellerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :products
end
