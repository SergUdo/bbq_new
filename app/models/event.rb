class Event < ApplicationRecord
  # Событие принадлежит юзеру
  belongs_to :user

  validates :user, presence: true
end
