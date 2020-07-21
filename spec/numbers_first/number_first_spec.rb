require 'spec_helper'

RSpec.describe NumberFirst do
  describe '.calculated_list' do
    context 'when list of numbers are lower to 10' do
      it "returns a list of 2 prime numbers" do
        max_numbers = NumberFirst.new(2)
        output = max_numbers.calculated_list*""
        output = output.to_i
        expected = 2
        expect(output).to eq(expected)
      end
      it "returns a list of 4 prime number" do
        max_numbers = NumberFirst.new(9)
        output = max_numbers.calculated_list*""
        output = output.to_i
        byebug
        expected = 2357
          expect(output).to eq(expected)
      end
    end
      context 'when we have an edge case' do
        context 'when list of numbers are 10' do
          it "returns a list of 4 prime number" do
            max_numbers = NumberFirst.new(10)
            output = max_numbers.calculated_list*""
            output = output.to_i
            expected = 2357
            expect(output).to eq(expected)
          end
        end
        context 'when list of numbers are 100' do
          it "returns a list of 25 prime number" do
            max_numbers = NumberFirst.new(100)
            output = max_numbers.calculated_list*""
            output = output.to_i
            expected = 2357111317192329313741434753596167717379838997
            expect(output).to eq(expected)
          end
        end
        context 'when list of numbers are 1000' do
          it "returns a list of 168 prime number" do
            max_numbers = NumberFirst.new(1000)
            output = max_numbers.calculated_list*""
            output = output.to_i
          expected = 2357111317192329313741434753596167717379838997101103107109113127131137139149151157163167173179181191193197199211223227229233239241251257263269271277281283293307311313317331337347349353359367373379383389397401409419421431433439443449457461463467479487491499503509521523541547557563569571577587593599601607613617619631641643647653659661673677683691701709719727733739743751757761769773787797809811821823827829839853857859863877881883887907911919929937941947953967971977983991997
            expect(output).to eq(expected)
          end
        end
      end
  end
end
