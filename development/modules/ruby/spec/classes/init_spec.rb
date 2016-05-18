require 'spec_helper'
describe 'ruby' do

  context 'with default values for all parameters' do
    it { should contain_class('ruby') }
  end
end
