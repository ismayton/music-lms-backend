class Course < ApplicationRecord
    has_many :subscriptions
    has_many :users, through: :subscriptions
    
    belongs_to :teacher
    has_many :lessons
end
