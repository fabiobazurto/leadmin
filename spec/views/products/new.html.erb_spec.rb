require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      color: 1,
      size: 1,
      price: "9.99"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[color]"

      assert_select "input[name=?]", "product[size]"

      assert_select "input[name=?]", "product[price]"
    end
  end
end
