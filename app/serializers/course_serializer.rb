class CourseSerializer < ActiveModel::Serializer
  attributes :id, :title 
  has_many :lessons
end
