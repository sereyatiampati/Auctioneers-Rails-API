class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :starting_price
end
