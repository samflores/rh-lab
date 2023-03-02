# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Employee do

  before { build :employee }
  
  describe 'validations' do 
    it { is_expected.to validate_presence_of(:name) }
  end 

  describe 'associations' do 
    it { is_expected.to have_many(:assignments) }
    it { is_expected.to have_many(:projects) }
    it { is_expected.to have_many(:employments) }
    it { is_expected.to have_many(:departments) }
    it { is_expected.to have_many(:managed_departments) }
  end 
end
