class Blog < ApplicationRecord
  has_one_attached :image
  validates :title, {presence: true, length: {maximum: 140}}
  validates :user_id, {presence: true}
end
