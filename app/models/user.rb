class User < ApplicationRecord
    has_many :subscriptions
    has_many :courses, through: :subscriptions 

    validates :username, presence: true, uniqueness: true
    has_secure_password
end
