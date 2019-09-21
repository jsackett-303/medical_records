class Medication < ApplicationRecord

  validates :medication_name, presence: true
  validates :manufacturer, presence: true

  def as_json(options = {})
    attributes.select { |k,_| ['id', 'medication_name'].include?(k) }
  end
end
