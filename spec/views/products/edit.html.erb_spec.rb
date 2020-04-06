require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      name: "MyString",
      color: 1,
      size: 1,
      price: "9.99"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[color]"

      assert_select "input[name=?]", "product[size]"

      assert_select "input[name=?]", "product[price]"
    end
  end
end
