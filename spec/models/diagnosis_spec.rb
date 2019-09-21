require 'rails_helper'

RSpec.describe Diagnosis, type: :model do

  let(:valid_attributes) {
    { diagnosis: 'death', diagnosis_code: 'X' }
  }

  let(:invalid_attributes) {
    { diagnosis_code: 'X' }
  }

  describe "#valid?" do
    it "is valid" do
      diagnosis = Diagnosis.new valid_attributes
      expect(diagnosis).to be_valid
    end

    it "is not valid" do
      diagnosis = Diagnosis.new invalid_attributes
      expect(diagnosis).to_not be_valid
    end
  end
end
