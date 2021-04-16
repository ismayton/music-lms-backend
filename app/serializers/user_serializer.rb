class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :subscriptions
  has_many :courses, through: :subscriptions
end
