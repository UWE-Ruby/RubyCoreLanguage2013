$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require 'test_gem'

describe TestGem::Hello do

  context 'instance' do

    subject { TestGem::Hello.new }

    it { subject.should be_a TestGem::Hello }

  end
    
end