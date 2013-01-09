describe "The Rspec ruby gem" do
  
  context "Domain Specific Language" do

    # has keywords like #context, and #describe to help organize the specification (aka 'spec')

    it "creates 'examples' with the #it keyword" do
      # the following test code passes, so this example passes
      1.should eq 1
    end

    it "has easily readable methods like #should to test any object" do
      "Hello".should eq "Hello"
    end

    it "has #should_not to test for negative cases" do
      1.should_not eq 2
    end

    it "creates readable predicate methods" do
      # Integers have #zero? and #nil? predicate methods, so
      # rspec automatically supports the #be_zero and #be_nil parameter to the #should_not method
      1.should_not be_zero
      1.should_not be_nil
    end

    it "alerts you when examples fail" do
      # When this example fails,
      # it will show "expected" as 2, and "actual" as 1
      1.should eq 2
    end

    it "supports placeholder examples that lack code (like this one)"

    it "requires that examples use expectations (like #should) to work properly" do
      # The following expression is false.
      # However, this example PASSES because no expectation was created.
      true == false
      # In order to make the test fail, you would need to add the should method, like so:
      # true.should == false
      #
      # Lesson: It's easy to write bad tests.
      #
    end

  end
end