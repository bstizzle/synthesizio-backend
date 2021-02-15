class User < ApplicationRecord
    has_many :synths, dependent: :destroy

    has_secure_password
    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 1 }
end