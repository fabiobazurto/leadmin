require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    @categories = create_list(:category,10)
    @product = create(:product)
    assign(:categories, @categories)
    assign(:product, @product)
  end

  it "renders new product form" do
    render

      assert_select "input[name=?]", "product[name]"




  end
end
