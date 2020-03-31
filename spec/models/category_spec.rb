require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Associations' do
    it { should have_many(:articles) }
  end
end
