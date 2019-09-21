class Patient < ApplicationRecord

  has_many :treatments
  has_many :visits

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
