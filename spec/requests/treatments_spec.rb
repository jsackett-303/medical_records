require 'rails_helper'

RSpec.describe "Treatments", type: :request do
  describe "GET /treatments" do
    let!(:patient) { Patient.create( first_name: 'foo', last_name: 'bar', email: 'foo@example.net') }

    it "works! (now write some real specs)" do
      get patient_treatments_path(patient_id: patient.id)
      expect(response).to have_http_status(200)
    end
  end
end
