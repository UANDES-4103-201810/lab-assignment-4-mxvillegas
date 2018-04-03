class Event < ApplicationRecord
  belongs_to :place
  has_many :tickets

  validate :start_date_after_created_date?

end

