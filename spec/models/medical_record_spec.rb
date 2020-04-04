require 'rails_helper'

describe MedicalRecord, type: :model do
  context 'validations' do
    it { should validate_presence_of(:patient_symptoms) }
    it { should validate_presence_of(:treatment) }
  end

  context 'associations' do
    it { should belong_to(:pet) }
  end
end
