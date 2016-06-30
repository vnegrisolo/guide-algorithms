# frozen_string_literal: true
require 'spec_helper'

describe Nameless do
  subject { described_class.new }

  describe '#palindrome?' do
    context 'is palindrome' do
      %w(
        a
        5
        a6a
        5g5
        asdf98766789fdsa
      ).each do |t|
        it { expect(subject.palindrome?(t)).to be true }
      end
    end

    context 'is not palindrome' do
      %w(
        a6b
        9g5
        asd87667fdsa
      ).each do |t|
        it { expect(subject.palindrome?(t)).to be false }
      end
    end
  end

  describe '#let_alpha_numeric' do
    it 'success' do
      expect(subject.send(:let_alpha_numeric, ' 3 d=a z 0 9')).to eq('3daz09')
    end
  end
end
