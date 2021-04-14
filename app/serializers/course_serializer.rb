class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title 
  has_many :lessons
  has_many :subscriptions
end
