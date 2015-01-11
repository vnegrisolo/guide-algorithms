require 'spec_helper'

describe NearbyWords do
  describe '#nearby_words' do
    {
      'hi' => %w(hi go)
    }.each do |word, list|
      it { expect(described_class.new.nearby_words(word)).to eq(list) }
    end
  end
end
