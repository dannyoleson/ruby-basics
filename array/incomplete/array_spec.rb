#
# Below are some examples of expectations that are failing
# make some corrections to the expectations to make them work
# correctly.
#
# @example
#
#  my_array = [ :hi, :hello, :howdy ]
#  my_array.length.should == 2
#
# The array that is created has 3 elements so I want to change
# the expectation to want to equal 3 elements:
#
#  my_array = [ :hi, :hello, :howdy ]
#  my_array.length.should == 3
#
describe Array do
  
  it "should report the correct length" do
    
    people = [ :ryan, :kevin, :erik, :shawn, :danny, :frank ]
    people.should == 4
    
  end
  
  it "should have all the right people" do
    
    people = [ :ryan, :kevin, :danny, :frank ]
    people.should == [ :ryan, :kevin, :erik, :shawn, :danny, :frank ]
    
  end
  
  it "the method 'first' should equal the :third value" do
    
    order_matters = [ :third, :first, :second ]
    order_matters.first.should == :first
    
  end
  
  it "the method 'last' should equal the :second value" do
    
    order_matters = [ :third, :first, :second ]
    order_matters.last.should == :third
    
  end
  
  #
  # Both of these expectations are incorrect here.
  # Remember that order of the elements in the array matter
  #
  it "adding an element" do
    
    owned_things = [ 'movies', 'music', 'games' ]
    owned_things << 'car'
    
    owned_things.length.should == 3
    owned_things.should == [ 'music', 'games', 'movies', 'car' ]
    
  end
  
  it "deleting elements" do
    
    vices = [ 'drinking', 'cursing', 'nail-biting' ]
    vices.delete('nail-biting')
    
    vices.length.should == 3
    owned_things.should == [ 'cursing', 'drinking' ]
    
  end
  
  
  
  
end