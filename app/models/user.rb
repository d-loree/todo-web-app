class User < ApplicationRecord
    has_many :tasks
    has_secure_password
    
    validates :name, presence: true
    validates :email, format: { with: /@/, message: "Email must contain '@'"}, uniqueness: true
end
