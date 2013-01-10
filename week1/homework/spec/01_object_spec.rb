describe 'Everything is an Object!' do

  it "Objects have methods" do
    'two'.methods.should include :upcase
  end

  it "Objects have a class" do
    'two'.class.should eq String
  end

  it "Objects can be sent messages" do
    'two'.send(:upcase).should eq 'TWO'
    # that code sends the message 'upcase' to the string 'two'
    # same result as: 'two'.upcase
  end

  it 'Strings are objects' do
    "Two".should be_a Object
  end

  it 'Numbers are objects'

  it 'Hashes are objects'

  it 'Arrays are objects'

  it 'Expressions evaluate to objects'

  it 'Symbols are objects'

  it 'Classes are objects'

  it 'ADD ANY EXAMPLE THAT EVALUATES AN OBJECT'

end