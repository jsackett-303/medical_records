require 'rails_helper'

RSpec.describe Treatment, type: :model do

  let!(:patient) { Patient.create( first_name: 'foo', last_name: 'bar', email: 'foo@example.net') }
  let!(:medication) { Medication.create( medication_name: 'biz', manufacturer: 'baz') }
  let(:valid_attributes) {
    { patient_id: patient.id, medication_id: medication.id, dosage: '100', start_date: Time.now.iso8601 }
  }

  let(:invalid_attributes) {
    { patient_id: patient.id, dosage: '100', start_date: Time.now.iso8601 }
  }

  describe "#valid?" do
    it "is valid" do
      treatment = Treatment.new valid_attributes
      expect(treatment).to be_valid
    end

    it "is not valid" do
      treatment = Treatment.new invalid_attributes
      expect(treatment).to_not be_valid
    end
  end
end
