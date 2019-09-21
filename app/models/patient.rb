class Patient < ApplicationRecord

  has_many :treatments
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
