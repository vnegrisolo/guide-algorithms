require 'spec_helper'

describe LinkedNumbers do
  describe '#add' do
    let(:list_1) { LinkedList.from_array([2, 4, 3]) }
    let(:list_2) { LinkedList.from_array([5, 6, 4]) }
    let(:result) { LinkedList.from_array([7, 0, 8]) }
    it do
      expect(described_class.new.add(list_1, list_2)).to eq(result)
    end
  end
end
