
describe Array do
  
  context "creation" do
    
    #
    # How to create an Array
    #
    it "Array" do
      my_array = Array.new
      my_array.should be_kind_of(Array)
      my_array.should be_empty
    end
    
    #
    # The quicker and often used method
    # to represent an Array
    #
    it "[]" do
      [].should be_kind_of(Array)
      [].should be_empty
    end
    
  end
  
  context "adding an item" do
    
    it "add" do
      my_array = []
      my_array.push(1)
      my_array.should == [1]
    end
    
    it "<<" do
      my_array = []
      my_array << 1
      my_array.should == [1]
    end
    
  end
  
  context "accessing elements" do
    
    #
    # This is a method that I have defined that returns an Array
    # that will be used in all the following examples
    #
    def test_array
      return [ :larry, :curly, :moe ]
    end
    
    #
    # The size or number of elements within the Array
    #
    it "length" do
      test_array.length.should == 3
    end
    
    #
    # Ruby provides a method to access the first element with
    # a human-readable name.
    #
    it "first" do
      test_array.first.should == :larry
    end
    
    #
    # This is another way to access the first element. Note
    # that counting starts at 0 and not 1. This is most every
    # language has done it forever and Ruby carries on the 
    # tradition
    #
    it "[0]" do
      test_array[0].should == test_array.first
    end
    
    #
    # Accessing other elements are as you would imagine
    #
    it "[1]" do
      test_array[1].should == :curly
    end
    
    #
    # Like first, Ruby array's provide a last
    #
    it "last" do
      test_array.last.should == :moe
    end
    
    #
    # While you can count to the last element or use last,
    # you can also use negative numbers and they will start
    # counting back from the end.
    #
    #
    it "[-1]" do
      test_array[-1].should == test_array.last
    end
    
    
  end
  
  context "removing an item" do
    
    #
    # Deleting an item happens immediately and is removed from
    # the Array
    #
    it "delete" do
      my_array = [ :coffee, :bacon, :bullets ]
      my_array.delete(:bacon)
      my_array.should == [ :coffee, :bullets ]
    end
    
    #
    # You can even subtract an Array from another
    # Array.  All the elements that are equal will
    # be removed.
    #
    it " - (minus)" do
      my_array = [ :coffee, :bacon, :bullets ]
      my_array = my_array - [ :bacon ]
      my_array.should == [ :coffee, :bullets ]
    end
    
  end
  
end