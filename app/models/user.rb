class User < ApplicationRecord
    has_many :tasks, dependent: :destroy

    validates :name, presence: true, length: { minimum: 3 }
    validates :lastName, presence: true, length: { minimum: 3 }
end
