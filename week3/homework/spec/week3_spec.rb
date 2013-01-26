$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'week3'

describe 'Variable type' do

  # TODO: Figure out where to set these (but NOT inside each test)

  it 'Constant is visible here' do
    A_CONSTANT.should eq "I'm a CONSTANT"
  end

  it 'Global is visible here' do
    $global_var.should eq "I'm a Global!"
  end

  # hint: you'll need to do this in week3.rb
  it 'Week3 class constant is visible here' do
    Week3::A_CONSTANT.should eq "I'm a class CONSTANT"
  end

end

describe 'Week3 method' do

  subject{ Week3.new }

  it '#name returns the @name instance variable' do
    subject.name.should eq 'Brandon'
  end

  it '#name= sets the @name instance variable (aka attribute)' do
    expected = 'Jason'
    subject.name = expected
    subject.name.should eq expected
  end

  it '#halve returns first half of an array' do
    input = [1,2,3,4]
    expected = [1,2]
    actual = subject.halve input
    actual.should eq expected
  end

  it '#halve does not modify input parameter' do
    input = [1,2,3,4]
    expected = [1,2,3,4]
    subject.halve input
    input.should eq expected
  end

  it '#halve! returns first half of an array' do
    input = [1,2,3,4]
    expected = [1,2]
    actual = subject.halve input
    actual.should eq expected
  end

  # optional because it is a bit tricky.
  # take a look at Array#slice! and note that it deletes, rather than selects.
  it '#halve! does modify input parameter' do
    input = [1,2,3,4]
    expected = [1,2]
    subject.halve! input
    input.should eq expected
  end

  it '#even? returns true if parameter is even' do
    subject.even?(10).should eq true
  end

  it '#even? works as expected when passed a string' do
    subject.even?('2').should eq true
  end

  it '#even? returns false if parameter is odd' do
    subject.even?(-9).should eq false
  end

  context '#configure' do

    # TODO: Write 3 specs and the Week3#configure method
    # method takes one optional parameter, a hash.
    # method returns a hash with these keys:
    #   :path
    #   :version
    #   :mode
    #
    # if the hash passed in has those keys,
    #   the corresponding values are used in the returned hash.
    #
    # for any key missing from the hash passed in, these default values are returned:
    #   :path     => './'
    #   :version  => '0.1.0'
    #   :mode     => 'production'
    #
    # hint: read about Hash#merge
    #
    # challenge: write the tests first
    #
    it 'returns defaults when no parameter is provided'

    it 'returns default value when :path is missing from parameter'

    it 'returns overridden value when :version is included in the parameter'

  end
end

