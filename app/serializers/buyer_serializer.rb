class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :user_type

  has_many :bids

  def user_type
    "Buyer"
  end
end
