require 'pry'

class Subscription < ApplicationRecord
    attr_accessor :lesson_statuses

    after_initialize :set_lesson_statuses 

    def set_lesson_statuses 
        @lesson_statuses = self.populate_statuses
    end 

    def populate_statuses 
        statuses = []
        self.course.lessons.each do |lesson|
            statuses << { lesson_id: lesson.id, status: "incomplete" }
        end

        return statuses
    end 

    belongs_to :user
    belongs_to :course

    validates :user_id, uniqueness: { scope: [:course_id] }
    # add class method for completed_lessons which collects lessons marked complete by user
    
end
