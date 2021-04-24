class LessonSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :video_url, :markdown_url
end
