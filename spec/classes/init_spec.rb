require 'spec_helper'
describe 'spectrum' do

  context 'with defaults for all parameters' do
    it { should contain_class('spectrum') }
  end
end
