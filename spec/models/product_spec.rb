require 'rails_helper'


RSpec.describe Product, type: :model do
  before(:all) do
    @product = create(:product)
  end
 
  it "is valid with valid attributes" do
    expect(@product).to be_valid
  end
  
  it "is not valid without name" do
    product = build(:product, name: nil)
    expect(product).to_not be_valid    
  end
  

  it "is not valid without color"  do
    product = build(:product, color: nil)
    expect(product).to_not be_valid        
  end

  it "is not valid with wrong color"  do
    product = build(:product, color: 'sdd')
    expect(product).to_not be_valid        
  end
  
  it "is not valid without size" do
    product = build(:product, size: nil)
    expect(product).to_not be_valid            
  end

  it "is not valid with wrong size" do
    product = build(:product, size: 'ssmall')
    expect(product).to_not be_valid                
  end

  it "is not valid negative stock" do
    product = build(:product, stock: -2)
    expect(product).to_not be_valid                        
  end

  it "is not valid stock string" do
    product = build(:product, stock: "sfsdfsdf")
    expect(product).to_not be_valid                        
  end
  
  it "is valid with price 0.01" do
    product = build(:product, price: 0.01)
    expect(product).to be_valid                        
  end

  it "is not valid with negative price" do
    product = build(:product, price: -1)
    expect(product).to_not be_valid                        
  end

  
end

