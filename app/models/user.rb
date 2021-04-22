class User < ApplicationRecord
    has_many :subscriptions
    has_many :courses, through: :subscriptions 
    attr_accessor :subscription_attributes

    accepts_nested_attributes_for :subscriptions 

    validates :username, presence: true, uniqueness: true
    has_secure_password
end
