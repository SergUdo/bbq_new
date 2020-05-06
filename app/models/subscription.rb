class Subscription < ApplicationRecord

  belongs_to :event
  belongs_to :user

  validates :event, presence: true

  validates :user_name, presence: true, unless: -> { user.present? }
  validates :user_email, presence: true, format: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/, unless: -> { user.present? }

  validates :user, uniqueness: {scope: :event_id}, if: -> { user.present? }
  validates :user, uniqueness: {scope: :user_id}, if: -> { user.present? }
  validates :user_email, uniqueness: {scope: :event_id}, unless: -> { user.present? }

  validate :uniq_event, if: -> { user.present? }
  validate :uniq_email_followers, unless: -> { user.present? }

  def user_name
    if user.present?
     user.name
    else
     super
    end
  end

  def user_email
    if user.present?
      user.email
    else
      super
    end
  end

  private

  def uniq_email_followers
    if User.find_by(email: user_email)
      errors.add(:user_email, I18n.t('errors.uniq_email_followers'))
    end
  end

  def uniq_event
    if user.id == event.user_id
      errors.add(user.name, I18n.t('errors.uniq_event'))
    end
  end
end
