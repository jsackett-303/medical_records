class Diagnosis < ApplicationRecord

  validates :diagnosis, presence: true
  validates :diagnosis_code, presence: true

  def as_json(options = {})
    attributes.select { |k,_| ['id', 'diagnosis'].include?(k) }
  end
end
