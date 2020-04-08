require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @categories = create_list(:category,10)
    @product = create(:product)
    assign(:categories, @categories)
    assign(:product, @product)
  end

  it "renders the edit product form" do
    render
    expect(rendered).to have_content(@product.name, count: 1)    
  end
end
