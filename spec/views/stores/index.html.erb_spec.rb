require 'rails_helper'

RSpec.describe "stores/index", type: :view do

  it "renders a list of stores" do
    @stores=create_list(:store,10)
    assign(:stores, @stores)
    allow(view).to receive_messages(:will_paginate => nil)    
    render
    expect(rendered).to have_css("tr.row-store", count: 10)
    
  end

  it "renders message with no stores" do
    @stores=nil
    assign(:stores, @stores)
    allow(view).to receive_messages(:will_paginate => nil)    
    render
    expect(rendered).to have_css("div.no-data", count: 1)
    
  end

  
end
