describe "The Rspec ruby gem" do
  
  context "Domain Specific Language" do

    # has keywords like #context, and #describe to help organize the specification (aka 'spec')

    it "creates 'examples' with the #it keyword" do
      # the following test code defines an expectation, which is true, so this example passes
      1.should eq 1
    end

    it "adds #should to all objects!" do
      "Hello".should eq "Hello"
    end

    it "adds #should_not to all objects (to test for negative cases)" do
      1.should_not eq 2
    end

    it "alerts you when examples fail" do
      # When this example fails,
      # it will show "expected" as 2, and "actual" as 1
      1.should eq 2
    end

    it "creates a be_zero matcher when it finds a #zero? predicate method" do
      # Integers have a #zero? predicate method, so
      # rspec automatically supports the #be_zero parameter to the #should method
      0.should be_zero
    end

    it "supports placeholder examples that lack code (like this one)"

    it "requires that examples use expectations, e.g. #should, or you get a false positive" do
      # The following expression is false.
      # However, this example PASSES because no expectation was created.
      true == false
      #
      # this code would cause the example to fail:
      # true.should == false
      #
      # Lesson: It's easy to write bad tests.
      #
    end

  end
end