# frozen_string_literal: true
require 'spec_helper'

class City
  def foo; end

  def bar; end
end

class Person < City
  def foo; end
end

RSpec.describe Monk do
  include Monk
  it 'returns the first instance of the method' do
    expect(find_it(Person.new, :foo)).to eq(City)
    expect(find_it(City.new, :foo)).to eq(City)
    expect(find_it(Person.new, :bar)).to eq(City)
    expect(find_it(City.new, :bar)).to eq(City)
  end

  it 'works with Numeric' do
    expect(find_it(1, :between?)).to eq(Numeric)
  end

  it 'works with object' do
    expect(find_it('string', :to_s)).to eq(Object)
  end

  it 'works with Proc' do
    expect(find_it(-> {}, :call)).to eq(Proc)
  end
end
