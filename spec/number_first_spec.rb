require 'spec_helper'

RSpec.describe './number_first' do
  let(:output) { %x(#{command}) }
  describe 'mandatory arguments sign' do
    context 'when one argument is zero' do
      let(:command) { 'ruby ./number_first.rb 0' }
      it { expect(output).to include('ArgumentSignError') }
    end
    context 'when one argument is negative' do
      let(:command) { 'ruby ./number_first.rb -1' }
      it { expect(output).to include('ArgumentSignError') }
    end
  end
end
