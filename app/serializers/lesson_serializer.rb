class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :markdown_url
end
