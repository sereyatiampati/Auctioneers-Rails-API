class BidSerializer < ActiveModel::Serializer
  attributes :id, :bid_amount, :bid_time
end
