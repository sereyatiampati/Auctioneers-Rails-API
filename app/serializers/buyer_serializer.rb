class BuyerSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :user_type, :user_id

  has_many :bids

  def user_type
    "Buyer"
  end
end
