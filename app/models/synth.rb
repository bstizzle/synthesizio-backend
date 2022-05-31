class Synth < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, length: { minimum: 1 }
end
