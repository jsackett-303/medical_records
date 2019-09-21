require "rails_helper"

RSpec.describe PatientDiagnosesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/patient_diagnoses").to route_to("patient_diagnoses#index")
    end

    it "routes to #show" do
      expect(:get => "/patient_diagnoses/1").to route_to("patient_diagnoses#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/patient_diagnoses").to route_to("patient_diagnoses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/patient_diagnoses/1").to route_to("patient_diagnoses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/patient_diagnoses/1").to route_to("patient_diagnoses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/patient_diagnoses/1").to route_to("patient_diagnoses#destroy", :id => "1")
    end
  end
end
