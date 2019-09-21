class Diagnosis < ApplicationRecord

  validates :diagnosis, presence: true
  validates :diagnosis_code, presence: true

end
