require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @category = create(:category)
  end
 
  it "is valid with valid attributes" do
    expect(@category).to be_valid
  end
  
  it "is not valid without name" do
    product = build(:categirt, name: nil)
    expect(product).to_not be_valid    
  end
  

  
end

