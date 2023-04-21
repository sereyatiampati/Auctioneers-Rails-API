class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password
  
  belongs_to :role
end
