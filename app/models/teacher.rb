class Teacher < ApplicationRecord
    has_many :courses

    validates :username, presence: true, uniqueness: true 
    has_secure_password
end
