class User < ApplicationRecord
    has_many :synths, dependent: :destroy

    has_secure_password
    validates :username, presence: true, uniqueness: true, length: { minimum: 1 }
end