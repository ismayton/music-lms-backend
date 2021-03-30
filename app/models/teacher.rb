class Teacher < ApplicationRecord
    has_many :courses
    has_many :subscriptions, through: :courses, source: :course

    validates :username, presence: true, uniqueness: true 
    has_secure_password
end
