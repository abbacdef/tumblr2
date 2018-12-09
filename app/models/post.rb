class Post < ApplicationRecord
  has_many :comments, dependent: :delete_all
  validates :title, presence: true, length: { minimum: 5 }
  validates :body, presence: true
end
