class Provider < ApplicationRecord

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :office_address, presence: true
  validates :office_city, presence: true
  validates :office_state, presence: true

end
