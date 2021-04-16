class TeacherSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_many :courses
  has_many :subscriptions, through: :courses
  has_many :users, through: :subscriptions
end
