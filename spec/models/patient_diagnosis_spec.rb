require 'rails_helper'

RSpec.describe PatientDiagnosis, type: :model do
  let!(:patient) { Patient.create( first_name: 'foo', last_name: 'bar', email: 'foo@example.net') }
  let!(:provider) { Provider.create(first_name: 'Biz', last_name: 'Baz', office_address: '999 18th St', office_city: 'Denver', office_state: 'CO') }
  let!(:diagnosis) { Diagnosis.create(diagnosis: 'healthy', diagnosis_code: 'X') }
  let(:valid_attributes) {
    { patient_id: patient.id, provider_id: provider.id, diagnosis_id: diagnosis.id, start_date: (Time.now - 1.year).iso8601, end_date: Time.now.iso8601 }
  }

  let(:invalid_attributes) {
    { patient_id: patient.id, start_date: (Time.now - 1.year).iso8601, end_date: Time.now.iso8601 }
  }

  describe "#valid?" do
    it "is valid" do
      patient_diagnosis = PatientDiagnosis.new valid_attributes
      expect(patient_diagnosis).to be_valid
    end

    it "is not valid" do
      patient_diagnosis = PatientDiagnosis.new invalid_attributes
      expect(patient_diagnosis).to_not be_valid
    end
  end
end
