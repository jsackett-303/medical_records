class PatientDiagnosis < ApplicationRecord
  belongs_to :patient
  belongs_to :provider
  belongs_to :diagnosis

  def as_json(options = {})
    super
      .merge(diagnosing_provider: provider)
      .merge(diagnosis: diagnosis)
      .reject { |k,_| ['patient_id', 'provider_id', 'diagnosis_id'].include?(k) }
  end
end
