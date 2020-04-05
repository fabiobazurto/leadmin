require 'rails_helper'

RSpec.describe Store, type: :model do
  before(:all) do
    @store1 = create(:store)
  end
 
  it "is valid with valid attributes" do
    expect(@store1).to be_valid
  end
  
  it "is not valid without name" do
    @store2 = build(:store, name: nil)
    expect(@store2).to_not be_valid    
  end
  

  it "is not valid without street"  do
    store2 = build(:store, street: nil)
    expect(store2).to_not be_valid        
  end

  it "is not valid without number" do
    store2 = build(:store, number: nil)
    expect(store2).to_not be_valid        
  end

  it "is not valid with letters in the number" do
    store2 = build(:store, number: 'dddddd')
    expect(store2).to_not be_valid        
  end

  it "is not valid with letters in the zipcode" do
    store2 = build(:store, zipcode: 'adfasdf')
    expect(store2).to_not be_valid            
  end

  it "is not valid without city" do
    store2 = build(:store, city: nil)
    expect(store2).to_not be_valid            
  end

  it "is not valid without country" do
    store2 = build(:store, country: nil)
    expect(store2).to_not be_valid                
  end


end
