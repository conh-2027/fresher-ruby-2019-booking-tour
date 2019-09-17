class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :review
  belongs_to :parent, class_name: Comment.name, optional: true
  has_many :replies, class_name: Comment.name, foreign_key: :parent_id,
    dependent: :destroy
end
