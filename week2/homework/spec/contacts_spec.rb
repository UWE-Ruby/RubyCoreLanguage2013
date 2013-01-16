require 'rspec'
require './lib/contacts.rb'

describe Contacts do

  let(:data) {  "Brandon Faloona|Seattle|WA|bfaloona@uw.edu\n" <<
                "Barack Obama|Washington|DC|president@wh.gov\n" <<
                "Jason Shaw|Seattle|WA|shawjaso@uw.edu\n" }

  subject { Contacts.new data }

  it '#raw_entries returns Array' do
    subject.raw_entries.should be_a Enumerable
  end

  it '#raw_entries contains 3 entries' do
    subject.raw_entries.count.should eq 3
  end

  it '#email_list includes Jason in output' do
    expected = '"Jason Shaw" <shawjaso@uw.edu>'
    actual = subject.email_list
    actual.should include expected
  end

  it '#format_email_address returns valid format' do
    expected = %q{"Brandon Faloona" <bfaloona@uw.edu>}
    actual = subject.format_email_address('Brandon Faloona', 'bfaloona@uw.edu')
    actual.should eq expected
  end

  it '#num_entries returns the count of entries' do
    subject.num_entries.should eq 3
  end

  it '#fields returns a list of fields (as symbols) that can exist for a contact' do
    subject.fields.should eq [:full_name, :city, :state, :email]
  end

  it '#contact(index) returns a hash for the contact at index' do
    subject.contact(0).should eq full_name: "Brandon Faloona", city: "Seattle", state: "WA", email: "bfaloona@uw.edu"
  end

  it '#format_contact(contact) returns formatted string for the contact' do
    hash = {full_name: "Brandon Faloona", city: "Seattle", state: "WA", email: "bfaloona@uw.edu"}
    expected = %{"Brandon Faloona of Seattle WA" <bfaloona@uw.edu>}
    actual = subject.format_contact(hash)
    actual.should eq expected
  end

  it '#all returns array of contacts' do
    subject.all.should eq([
                            {full_name: "Brandon Faloona", city: "Seattle", state: "WA", email: "bfaloona@uw.edu"},
                            {full_name: "Barack Obama", city: "Washington", state: "DC", email: "president@wh.gov"},
                            {full_name: "Jason Shaw", city: "Seattle", state: "WA", email: "shawjaso@uw.edu"},
                          ])
  end
  it '#formatted_list returns formatted list of contacts' do
    subject.formatted_list.should eq(
                                      %{"Brandon Faloona of Seattle WA" <bfaloona@uw.edu>\n} <<
                                      %{"Barack Obama of Washington DC" <president@wh.gov>\n} <<
                                      %{"Jason Shaw of Seattle WA" <shawjaso@uw.edu>}
                                    )
  end
  it '#full_names returns array of names' do
    subject.full_names.should eq ["Brandon Faloona", "Barack Obama", "Jason Shaw"]
  end

  it '#cities returns array of unique cities' do
    subject.cities.should eq ["Seattle", "Washington"]
  end
  it '#append_contact(pipe_delimited_string) adds a contact' do
    initial_array = subject.all
    new_contact = {full_name: "George Washington", city: "Washington", state: "DC", email: "1st@wh.gov"}
    expected = initial_array << new_contact

    # act
    subject.append_contact(new_contact)

    actual = subject.all
    actual.should eq expected
  end

  it '#delete_contact(index) deletes the contact at index' do
    # act
    subject.delete_contact 0

    expected =  [
                  {full_name: "Barack Obama", city: "Washington", state: "DC", email: "president@wh.gov"},
                  {full_name: "Jason Shaw", city: "Seattle", state: "WA", email: "shawjaso@uw.edu"}
                ]
    actual = subject.all

    actual.should eq expected
  end

  it '#search returns exact matches' do
    expected =  [
                  {full_name: "Barack Obama", city: "Washington", state: "DC", email: "president@wh.gov"}
                ]
    actual = subject.search('Washington')
    actual.should eq expected
  end

  it '#all_sorted_by(field) returns contacts sorted alphabetically by that field' do
    expected =  [
                  {full_name: "Barack Obama", city: "Washington", state: "DC", email: "president@wh.gov"},
                  {full_name: "Brandon Faloona", city: "Seattle", state: "WA", email: "bfaloona@uw.edu"},
                  {full_name: "Jason Shaw", city: "Seattle", state: "WA", email: "shawjaso@uw.edu"},
                ]
    actual = subject.search(:full_name)
    actual.should eq expected
  end

end
