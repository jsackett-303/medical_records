class Medication < ApplicationRecord

  validates :medication_name, presence: true
  validates :manufacturer, presence: true

end
