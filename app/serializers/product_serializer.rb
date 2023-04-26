class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :starting_price, :image, :category_id

  has_many :bids
  belongs_to :seller
  belongs_to :category
end
