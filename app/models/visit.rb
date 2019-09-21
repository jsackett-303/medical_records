class Visit < ApplicationRecord
  belongs_to :patient
  belongs_to :provider

  def as_json(options = {})
    super
      .merge(provider: provider)
      .reject { |k,_| ['patient_id', 'provider_id'].include?(k) }
  end
end
