# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Employment do
  
  before { build :employment }

  describe 'validations' do 
    it { is_expected.to validate_presence_of(:salary) }
    it { is_expected.to validate_numericality_of(:salary).only_integer }
    it { is_expected.to validate_numericality_of(:salary).is_greater_than(0) }
    it { is_expected.to validate_presence_of(:registration) }
    it { is_expected.to validate_presence_of(:starts_on) }
    # it { is_expected.to  }

  end 

  describe 'associations' do 
    it { is_expected.to belong_to(:employee) }
    it { is_expected.to belong_to(:department) }
    it { is_expected.to belong_to(:position) }
  end 

end
