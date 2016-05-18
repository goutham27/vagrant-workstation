require 'spec_helper'
describe 'sublime' do

  context 'with default values for all parameters' do
    it { should contain_class('sublime') }
  end
end
