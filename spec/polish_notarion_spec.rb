require 'spec_helper'

describe PolishNotation do
  describe '#evaluate' do
    {
      '9' => %w(2 1 + 3 *),
      '6' => %w(4 13 5 / +)
    }.each do |result, oper_list|
      it { expect(described_class.new.evaluate(oper_list)).to eq(result.to_i) }
    end
  end
end
