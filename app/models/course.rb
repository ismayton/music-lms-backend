class Course < ApplicationRecord
    has_many :users
    belongs_to :teacher
    has_many :lessons
end
