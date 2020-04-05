require 'rails_helper'

RSpec.describe "stores/edit", type: :view do
  before(:each) do
    store = create(:store, name:'Magic Store')
    @store = assign(:store, store                  )
    @cities = assign(:cities, create_list(:city,10))
    @countries = assign(:countries, create_list(:country,10))
  end

  it "renders the edit store form" do
    render

    assert_select "form[action=?][method=?]", store_path(@store), "post" do

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[street]"

      assert_select "input[name=?]", "store[number]"

      assert_select "input[name=?]", "store[zipcode]"

      assert_select "select[name=?]", "store[city_id]"

      assert_select "select[name=?]", "store[country_id]"
    end

    expect(rendered).to have_content(@store.name)
  end
end
