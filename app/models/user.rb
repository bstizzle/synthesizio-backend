class User < ApplicationRecord
    has_many :synths, dependent: :destroy

    validates :username, uniqueness: true
end
