require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    store = Struct.new(:id, :name, :stock)
    @product = assign(:product, create(:product))

    @stores=create_list(:store_product,10).map { | detail|
      store.new(detail.store.id,detail.store.name,detail.stock)
    }
    assign(:stores,@stores )
    @store_product=assign(:store_product, create(:store_product))
  end

  it "renders stores" do
    nombre = @stores.first.name
    render
    expect(rendered).to match(nombre)
  end
end
