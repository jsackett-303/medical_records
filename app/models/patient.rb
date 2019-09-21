class Patient < ApplicationRecord

  has_many :treatments
  has_many :visits
  has_many :patient_diagnoses

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

end
