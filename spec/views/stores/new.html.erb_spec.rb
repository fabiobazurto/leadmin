require 'rails_helper'

RSpec.describe "stores/new", type: :view do
  before(:each) do
    assign(:store, build(:store))
     @cities = assign(:cities, create_list(:city,10))
    @countries = assign(:countries, create_list(:country,10))
  end

  it "renders new store form" do
    render

    assert_select "form[action=?][method=?]", stores_path, "post" do

      assert_select "input[name=?]", "store[name]"

      assert_select "input[name=?]", "store[street]"

      assert_select "input[name=?]", "store[number]"

      assert_select "input[name=?]", "store[zipcode]"

      assert_select "select[name=?]", "store[city_id]"

      assert_select "select[name=?]", "store[country_id]"
    end
  end
end
