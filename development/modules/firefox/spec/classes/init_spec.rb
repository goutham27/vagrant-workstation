require 'spec_helper'
describe 'firefox' do

  context 'with default values for all parameters' do
    it { should contain_class('firefox') }
  end
end
