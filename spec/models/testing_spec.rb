require 'rails_helper'

RSpec.describe Testing, type: :model do
  context 'validations' do
    let(:testing) { build(:testing) }

    it 'is valid' do
      expect(testing).to_not be_valid
    end

    it 'is invalid' do
      testing.message = nil
      expect(testing).to_not be_valid
    end
  end
end
