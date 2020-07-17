require 'spec_helper'

RSpec.describe './number_first' do
  let(:output) { %x(#{command}) }
  context 'when one argument is zero or negative' do
    let(:command) { 'ruby ./number_first.rb 0' }
    it { expect(output).to include('ArgumentError') }
  end
end
