# frozen_string_literal: true

require 'spec_helper'

RSpec.describe NumberFirst do
  describe '.calculated_list' do
    context 'when list of numbers are lower to 10' do
      it 'returns a list of 2 prime numbers' do
        max_numbers = NumberFirst.new(2)
        output = max_numbers.calculated_list * ''
        output = output.to_i
        expected = 2
        expect(output).to eq(expected)
      end
      it 'returns a list of 4 prime number' do
        max_numbers = NumberFirst.new(9)
        output = max_numbers.calculated_list * ''
        output = output.to_i
        expected = 2357
        expect(output).to eq(expected)
      end
    end
    context 'when we have an edge case' do
      context 'when list of numbers are 10' do
        it 'returns a list of 4 prime number' do
          max_numbers = NumberFirst.new(10)
          output = max_numbers.calculated_list * ''
          output = output.to_i
          expected = 2_357
          expect(output).to eq(expected)
        end
      end
      context 'when list of numbers are 100' do
        it 'returns a list of 25 prime number' do
          max_numbers = NumberFirst.new(100)
          output = max_numbers.calculated_list * ''
          output = output.to_i
          expected = 2_357_111_317_192_329_313_741_434_753_596_167_717_379_838_997
          expect(output).to eq(expected)
        end
      end
      context 'when list of numbers are 1000' do
        it 'returns a list of 168 prime number' do
          max_numbers = NumberFirst.new(1000)
          output = max_numbers.calculated_list * ''
          output = output.to_i
          expected = 2_357_111_317_192_329_313_741_434_753_596_167_717_379_838_997_101_103_107_109_113_127_131_137_139_149_151_157_163_167_173_179_181_191_193_197_199_211_223_227_229_233_239_241_251_257_263_269_271_277_281_283_293_307_311_313_317_331_337_347_349_353_359_367_373_379_383_389_397_401_409_419_421_431_433_439_443_449_457_461_463_467_479_487_491_499_503_509_521_523_541_547_557_563_569_571_577_587_593_599_601_607_613_617_619_631_641_643_647_653_659_661_673_677_683_691_701_709_719_727_733_739_743_751_757_761_769_773_787_797_809_811_821_823_827_829_839_853_857_859_863_877_881_883_887_907_911_919_929_937_941_947_953_967_971_977_983_991_997
          expect(output).to eq(expected)
        end
      end
    end
  end
end
