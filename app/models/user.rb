class User < ApplicationRecord
    has_many :tasks, dependent: :destroy
    validates :name,length: {minimum:3}
    validates :email, presence: true, uniqueness: true
    validates_format_of :email,  with: /\A[^@\s]+@[^@\s]+\z/, message: "Must be a valid email address"
    validates :password_digest,:confirmation => true, length: { in: 6..12 }
    has_secure_password
end
