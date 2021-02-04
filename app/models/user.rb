class User < ApplicationRecord
    has_many :synths, dependent: :destroy
end
