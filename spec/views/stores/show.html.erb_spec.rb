require 'rails_helper'

RSpec.describe "stores/show", type: :view do
  before(:each) do
    store = create(:store, name:'Magic Store')
    @store = assign(:store, store                  )
    @cities = assign(:cities, create_list(:city,10))
    @countries = assign(:countries, create_list(:country,10))
  end

  it "renders products" do
    render
    expect(rendered).to have_css("tr.row-product", count: 1)    
  end
end
