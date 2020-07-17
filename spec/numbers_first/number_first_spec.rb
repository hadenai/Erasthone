require 'spec_helper'

RSpec.describe NumberFirst do
  describe '.calculated_list' do
    context 'when list of numbers are lower to 10' do
      it "return a list of number first of two " do
        list_numbers = NumberFirst.new(2)
        output = list_numbers.calculated_list
        expected = 2
        expect(output).to eq(expected)
      end
      it "return a list of number first of seven " do
      end
    end
      context 'when we have an edge case' do
        context 'when list of numbers are 10' do
        end
        context 'when list of numbers are 100' do
        end
        context 'when list of numbers are 1000' do
        end
      end
  end
end
