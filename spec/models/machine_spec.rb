require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'validations' do
    it { should validate_presence_of :location }
    it { should have_many :snacks}
    it { should belong_to :owner }
  end
end
