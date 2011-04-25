
describe Hash do
  
  context "creation" do
    
    #
    # How to create an Hash
    #
    it "Hash" do
      my_Hash = Hash.new
      my_Hash.should be_kind_of(Hash)
      my_Hash.should be_empty
    end
    
    #
    # The quicker and often used method
    # to represent an Hash
    #
    it "{}" do
      {}.should be_kind_of(Hash)
      {}.should be_empty
    end
    
  end
  
  #
  # When you store an item in a hash you specify a value that 
  # is the key to that value.
  #
  context "adding an item" do
    
	
	# NOTE: normally when you test you want to test one thing; I am being lazy
	# here to ensure you see all the possible operations
    it "should set the value, have keys, have values, and have the proper length" do
      
	  # create
	  my_hash = {}
      
	  # set the key :name to the value 'Erik'
	  my_hash[:name] = 'Erik'
	  
	  # testing if the key :name has the value 'Erik'
	  my_hash[:name].should == 'Erik'
	  
	  # keys will give you an array or keys
      my_hash.keys.should == [ :name ]
	  
	  # values will give you an array of values
	  my_hash.values.should == [ 'Erik' ]
	  
	  # there should be one key-value pair
	  my_hash.length.should == 1
	  
    end
    
  end
  
  context "changing an item" do
  
	it "should change the value" do
		
		# you can also create hashes with data in them to save space
		favorites = { :animal => 'giraffe', :color => 'blue' }
		
		favorites[:animal].should == 'giraffe'
		
		# Now I will change my favorite animal
		
		favorites[:animal] = 'honey badger'
		
		favorites[:animal].should == 'honey badger'
	
	end
  
  end
  
  #
  # When you delete an item in a hash you need to specify the key
  #
  context "deleting an item" do
    
	# NOTE: normally when you test you want to test one thing; I am being lazy
	# here to ensure you see all the possible operations
    it "should remove the item from the hash" do
      
	  my_hash = {}
      
	  my_hash['status'] = 'ONLINE'
	  my_hash['start_time'] = Time.now
	  
	  # verify that we set up everything
	  my_hash['status'].should == 'ONLINE'
	  my_hash.has_key?('start_time')
	  my_hash['start_time'].should be_kind_of(Time)
	  my_hash.length.should == 2
	  
	  # now remove an element
	  deleted_status = my_hash.delete('status')
	  
	  # when you call delete the result should return the value that you deleted
	  deleted_status.should == 'ONLINE'
	  
	  # Our hash should be smaller
	  my_hash.length.should == 1
	  
    end
    
  end
 
 end
  
  