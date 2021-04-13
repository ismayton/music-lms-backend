class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :video_url
end
