class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email

  has_many :bids
end
