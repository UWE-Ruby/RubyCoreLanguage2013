$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'employee'
require 'business'
require 'auto_shop'

describe 'AutoShop' do

  it '#superclass is Business' do
    AutoShop.superclass.should eq Business
  end

  describe 'instance' do

    # AutoShop #initialize takes one more parameter than Business.
    # This new parameter is the first employee.
    # Handle the new parameter, then call super (with parameters!) to invoke Business#initialize.
    subject { AutoShop.new 'Mr. Fix It', 'WA987654321', Employee.new('Sue', 'Owner', 0) }

    it '#employees returns an Array' do
      subject.employees.should be_a Array
    end

    it '#append_employees accepts an array of employees' do
      # setup
      before = subject.employees.count
      input = [
                Employee.new('Chu', 'Mechanic',     150_000),
                Employee.new('Lou', 'Receptionist', 90_000)
              ]
      # act
      subject.append_employees input
      # verify
      after = subject.employees.count
      after.should eq before + input.size
    end


    it '#employee_list returns list of employee names' do
      # setup
      input = [Employee.new('Lou', 'Receptionist', 90_000)]
      subject.append_employees input
      subject.employee_list.should eq "Sue\nLou"
    end

  end
end

