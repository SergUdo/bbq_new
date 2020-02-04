class Event < ActiveRecord::Base
  # Событие принадлежит юзеру
  belongs_to :user

  validates :user, presence: true
end