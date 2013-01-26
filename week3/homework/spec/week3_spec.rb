$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'week3'

describe 'Variable type' do

  # TODO: Figure out where in week3.rb to set these

  it 'Constant is visible here' do
    A_CONSTANT.should eq "I'm a CONSTANT"
  end

  it 'Week3 class constant is visible here' do
    Week3::A_CONSTANT.should eq "I'm a class CONSTANT"
  end

  it 'Global is visible here' do
    $global_var.should eq "I'm a Global!"
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

  it '#halve returns halved integer' do
    input = 10
    expected = 5
    actual = subject.halve input
    actual.should eq expected
  end

  it '#halve does not modify input parameter' do
    input = 10
    expected = 10
    subject.halve input
    input.should eq expected
  end

  it '#halve! returns halved integer' do
    input = 10
    expected = 5
    actual = subject.halve! input
    actual.should eq expected
  end

  it '#halve! modifies the input parameter' do
    input = 10
    expected = 5
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

