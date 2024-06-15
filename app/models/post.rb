class Post < ApplicationRecord
  validates :user_name, presence: true, length: {maximum: 20}
  validates :body, presence: true
end
