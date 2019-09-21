require 'rails_helper'

RSpec.describe Patient, type: :model do

  let(:valid_attributes) {
    { first_name: 'Foo', last_name: 'Bar', email: 'foo@example.com' }
  }

  let(:invalid_attributes) {
    { last_name: 'Bar', email: 'foo@example.com' }
  }

  describe "#valid?" do
    it "is valid" do
      patient = Patient.new valid_attributes
      expect(patient).to be_valid
    end

    it "is not valid" do
      patient = Patient.new invalid_attributes
      expect(patient).to_not be_valid
    end
  end
end
