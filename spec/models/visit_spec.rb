require 'rails_helper'

RSpec.describe Visit, type: :model do
  let!(:patient) { Patient.create( first_name: 'foo', last_name: 'bar', email: 'foo@example.net') }
  let!(:provider) { Provider.create(first_name: 'Biz', last_name: 'Baz', office_address: '999 18th St', office_city: 'Denver', office_state: 'CO') }
  let(:valid_attributes) {
    { patient_id: patient.id, provider_id: provider.id, notes: 'thumbsup', visit_date: Time.now.iso8601 }
  }

  let(:invalid_attributes) {
    { patient_id: patient.id, notes: 'struggling', visit_date: Time.now.iso8601 }
  }

  describe "#valid?" do
    it "is valid" do
      visit = Visit.new valid_attributes
      expect(visit).to be_valid
    end

    it "is not valid" do
      visit = Visit.new invalid_attributes
      expect(visit).to_not be_valid
    end
  end
end
