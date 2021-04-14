class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :course

    validates :user_id, uniqueness: { scope: [:course_id] }
    # add class method for completed_lessons which collects lessons marked complete by user
end
