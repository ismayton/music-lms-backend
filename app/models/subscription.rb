class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :course
    has_many :lesson_statuses 

    validates :user_id, uniqueness: { scope: [:course_id] }

    after_create :populate_lesson_statuses 

    def populate_lesson_statuses
        self.course.lessons.each do |lesson|
            self.lesson_statuses.build(lesson_id: lesson.id, status: "")
        end
        self.save
    end

end
