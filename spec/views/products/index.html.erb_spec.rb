require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    @products=create_list(:product,10)
    assign(:products, @products)
  end

  it "renders a list of products" do
    allow(view).to receive_messages(:will_paginate => nil)    
    render
    expect(rendered).to have_css("tr.row-product", count: 10)
    
  end

  it "renders message with no products" do
    @products=nil
    assign(:products, @products)
    allow(view).to receive_messages(:will_paginate => nil)    
    render
    expect(rendered).to have_css("div.no-data", count: 1)
    
  end  
end
