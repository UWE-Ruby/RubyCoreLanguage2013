$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'rspec/mocks'
require 'my_class'


describe MyClass do

  describe '::report' do

    context 'without a parameter' do

      it 'returns a string' do
        MyClass.report.should be_a String
      end

      it 'handles rare values'
      it 'handles low values'
      it 'handles high values'

    end

    context 'when passed a specialized_object' do

      it 'returns a string'
      it 'handles rare values'
      it 'handles low values'
      it 'handles high values'

    end

  end
end