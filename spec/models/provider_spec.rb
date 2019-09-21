require 'rails_helper'

RSpec.describe Provider, type: :model do

  let(:valid_attributes) {
    { first_name: 'Biz', last_name: 'Baz', office_address: '999 18th St', office_city: 'Denver', office_state: 'CO' }
  }

  let(:invalid_attributes) {
    { last_name: 'Baz', office_address: '999 18th St', office_city: 'Denver', office_state: 'CO' }
  }

  describe "#valid?" do
    it "is valid" do
      provider = Provider.new valid_attributes
      expect(provider).to be_valid
    end

    it "is not valid" do
      provider = Provider.new invalid_attributes
      expect(provider).to_not be_valid
    end
  end
end
