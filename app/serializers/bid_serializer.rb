class BidSerializer < ActiveModel::Serializer
  attributes :id, :bid_amount, :bid_time

  belongs_to :product
  belongs_to :user
end
