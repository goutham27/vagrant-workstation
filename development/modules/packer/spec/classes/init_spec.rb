require 'spec_helper'
describe 'packer' do

  context 'with default values for all parameters' do
    it { should contain_class('packer') }
  end
end
