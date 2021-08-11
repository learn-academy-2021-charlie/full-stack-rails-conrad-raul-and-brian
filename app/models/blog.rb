class Blog < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true
    validates :title, length: { minimum: 10 }
    validates :title, uniqueness: true
end
