class Subscription < ApplicationRecord
    belongs_to :user
    belongs_to :course
    
    # add class method for completed_lessons which collects lessons marked complete by user
end
