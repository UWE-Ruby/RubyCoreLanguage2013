
describe "Strings" do
  
  context "created with double quotes" do
    
    it "are valid" do
      "Ruby Course".should eq 'Ruby Course'
    end
    
    it "are of class String"
    
    it "can contain bare single-quote (') characters"
    
    it "allow the escape of double quote (\") characters"
    
    it "allow interpolation (Ruby code within the string)"
    
    it "replace \t with a tab character"

    it "ADD AN EXAMPLE THAT TESTS A DIFFERENT ESCAPE SEQUENCE"

    it "replaceS special characters when values are specified at the end via '% [value]'"
    
  end
  
  context "created with single quotes" do
    
    it "are valid" do
      'Alfred E. Newman'.should eq "Alfred E. Newman"
    end
    
    it "are of class String"
    
    it "allow double-quote (\") characters"

    it "allow the escape of single quote (') characters"
    
    it "does not interpolate Ruby code"
    
    it "does not escape newline characters"
    
  end

  context "created with Q sequence" do

    it "supports arbitrary delimiters and behave like a double quoted string" do
      %Q@<span style='color:blue'>"1 + 1 = #{1 + 1}"</span>@.should eq '<span style=\'color:blue\'>"1 + 1 = 2"</span>'
    end

    it "can omit the Q and just use %{}"

    it "created with the pattern %q supports arbitrary delimiters and behave like a single quoted string"

  end

end