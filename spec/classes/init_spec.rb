require 'spec_helper'
describe 'simple_pcp' do

  context 'with defaults for all parameters' do
    it { should contain_class('simple_pcp') }
  end
end
