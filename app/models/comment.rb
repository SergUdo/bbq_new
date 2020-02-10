class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user

  has_many :comments, dependent: :destroy

  validates  :event, presence: true
  validates :body, presence: true
  validates :user_name, presence: true, unless: -> { user.present? }
end
