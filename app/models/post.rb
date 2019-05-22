class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :comments, dependent: :destroy
  has_one_attached :cover_picture

  validates :title, presence: true
  validates :body, presence: true
  validates :body,  length: { minimum: 250 }
end
