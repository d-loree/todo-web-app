class Task < ApplicationRecord
    belongs_to :user

    has_many :notes
    validates :name, presence: true
end
