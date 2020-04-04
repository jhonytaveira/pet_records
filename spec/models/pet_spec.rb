require 'rails_helper'

describe Pet, type: :model do
  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:breed) }
    it { should validate_presence_of(:kind) }
  end
end
