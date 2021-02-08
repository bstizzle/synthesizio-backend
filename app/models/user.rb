class User < ApplicationRecord
    has_many :synths, dependent: :destroy

    has_secure_password
    validates :username, uniqueness: true
end
