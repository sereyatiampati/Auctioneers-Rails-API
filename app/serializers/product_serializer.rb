class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :starting_price, :image, :category_id, :count, :highest_bid

  has_many :bids
  belongs_to :seller
  belongs_to :category

  def count
    allbids = self.object.bids.all
    bidscount = allbids.count
    "#{bidscount}"
  end

  def highest_bid
    allbids = self.object.bids.all
    bid = allbids.order(bid_amount: :desc).first
    if bid
      bid.bid_amount
      "#{bid.bid_amount}"
    else
      return 0
    end
  end
end
