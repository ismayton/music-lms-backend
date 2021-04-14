class Teacher < ApplicationRecord
    has_many :courses
    has_many :subscriptions, through: :courses
    has_many :users, -> { distinct }, through: :subscriptions

    validates :username, presence: true, uniqueness: true 
    has_secure_password
end
