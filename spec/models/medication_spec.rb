require 'rails_helper'

RSpec.describe Medication, type: :model do

  let(:valid_attributes) {
    { medication_name: 'advil', manufacturer: 'generic' }
  }

  let(:invalid_attributes) {
    { manufacturer: 'generic' }
  }

  describe "#valid?" do
    it "is valid" do
      medication = Medication.new valid_attributes
      expect(medication).to be_valid
    end

    it "is not valid" do
      medication = Medication.new invalid_attributes
      expect(medication).to_not be_valid
    end
  end
end
