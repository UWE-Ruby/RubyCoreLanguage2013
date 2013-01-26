describe 'RSpec before blocks' do

  # within an rspec describe or context block
  #   we've been using #let and #subject to setup what you are testing.
  # you can also use before blocks to setup your test.
  # rspec solves this by letting you assign to instance variables
  #   that you can use in examples.

  before(:all) do
    # runs once before tests
    # TODO: you need to add one line of code here
  end

  before(:each) do
    # runs before each test
    # TODO: you need to add one line of code here
  end

  it 'can assign instance variables to set state' do
    # don't change this
    @rspec_instance_variable1 = nil

    # don't change this, use a before block to fix it
    @rspec_instance_variable2.should eq "I'm an rspec instance variable"
  end

  it 'can be run before each test' do
    # don't change this, use a before block to fix it
    @rspec_instance_variable1.should eq "I'm an rspec instance variable that is set before each test"
  end

end
