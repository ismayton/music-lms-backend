class SubscriptionSerializer < ActiveModel::Serializer
    attributes :id, :course_id, :user_id, :lesson_statuses
end
  