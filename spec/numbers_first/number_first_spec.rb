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
          expected = 235711131719232931374143475359616771737
                      9838997101103107109113127131137139149151
                      15716316717317918119119319719921122322722
                      92332392412512572632692712772812832933073
                      113133173313373473493533593673733793833893
                      9740140941942143143343944344945746146346747
                      94874914995035095215235415475575635695715775
                      875935996016076136176196316416436476536596616
                      7367768369170170971972773373974375175776176977
                      37877978098118218238278298398538578598638778818
                      83887907911919929937941947953967971977983991997
            expect(output).to eq(expected)
          end
        end
      end
  end
end
