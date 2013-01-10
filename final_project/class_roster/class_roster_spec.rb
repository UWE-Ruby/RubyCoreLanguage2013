require 'rspec'
require './class_roster.rb'

describe ClassRoster do

  subject { ClassRoster.new 'roster.txt' }

  it 'find 20 people in roster.txt' do
    expected = 20
    actual = subject.email_list.split(',').count
    actual.should eq expected
  end

  it 'include Jason in output' do
    expected = '"Jason Shaw" <shawjaso@uw.edu>'
    actual = subject.email_list
    actual.should include expected
  end

  it '#format_email_address returns valid format' do
    expected = %q{"Brandon Faloona" <bfaloona@uw.edu>}
    actual = subject.format_email_address('Brandon Faloona', 'bfaloona@uw.edu')
    actual.should eq expected
  end

end

