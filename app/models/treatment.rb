class Treatment < ApplicationRecord
  belongs_to :patient
  belongs_to :medication

  def as_json(options = {})
    super
      .merge(medication: medication)
      .reject { |k,_| ['patient_id', 'medication_id'].include?(k) }
  end
end
