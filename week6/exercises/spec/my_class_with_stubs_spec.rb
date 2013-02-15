$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'rspec/mocks'
require 'my_class'


describe MyClass do

  describe '::report' do

    context 'without a parameter' do

      it 'handles rare value of 0.999' do
        MyClass.stub(:expensive_operation).and_return(0.999)
        MyClass.report.should eq 'RARE!!'
      end

      [0.01, 0.49999, 0.5].each do |value|
        it "handles low value of #{value}" do
          MyClass.stub(:expensive_operation).and_return(value)
          MyClass.report.should eq 'Low'
        end
      end

    end

    context 'when passed a specialized_object' do

      it 'handles rare value of 0.9991' do
        fake_obj = double 'specialized_stub'
        fake_obj.stub(:some_method).and_return(0.9991)
        MyClass.report(fake_obj).should eq 'RARE!!'
      end

      it 'raises InvalidOdds for values greater than 1' do
        fake_obj = double 'specialized_stub'
        fake_obj.should_receive(:some_method).and_return(1.01)
        lambda { MyClass.report(fake_obj) }.should raise_error(MyClass::InvalidOdds)
      end

    end

  end
end
