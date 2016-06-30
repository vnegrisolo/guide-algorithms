# frozen_string_literal: true
require 'spec_helper'

describe MergeSort do
  describe '#sort' do
    [
      [1, 4, 7, 9],
      [9, 4, 7, 1],
      [-5, 7, 3, -194, 0],
      [-5, 7, 9, 3, -194, 0],
      [],
      [-4],
      [9]
    ].each do |array|
      it { expect(described_class.new.sort(array)).to eq(array.sort) }
    end
  end

  describe '#middle' do
    it { expect(described_class.new.send(:middle, 2)).to eq(0) }
    it { expect(described_class.new.send(:middle, 3)).to eq(1) }
    it { expect(described_class.new.send(:middle, 4)).to eq(1) }
    it { expect(described_class.new.send(:middle, 5)).to eq(2) }
    it { expect(described_class.new.send(:middle, 6)).to eq(2) }
  end
end
