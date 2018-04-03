class User < ApplicationRecord
  has_many :user_tickets
	has_many :tickets, :through => :user_tickets

  validates :name, :last_name, :email, :phone, :password, presence: true

  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: create

  validates :phone, length: { minimum: 9}
  validates :phone, length: { maximum: 12}

  validates :password, length: { minimum: 8}
  validates :password, length: { maximum: 12}

end
