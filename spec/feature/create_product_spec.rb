# coding: utf-8
require 'rails_helper'
 
RSpec.describe 'Create a product', type: :feature do

  before(:all) do

    @product = build(:product)
  end

  scenario 'with valid params' do
    visit new_product_path

    given_I_set_minimal_data
    
    all('.btn-primary').first.click
    expect(page).to_not have_css('#error_explanation')
  end

  scenario 'with stock zero' do
    visit new_product_path
    given_I_set_minimal_data
    all('#product_price').first.fill_in  with: 0    
    
    all('.btn-primary').first.click
    expect(page).to have_css('#error_explanation')
  end

  private

  def given_I_set_minimal_data

    all('#product_name').first.fill_in  with: @product.name

    all('#product_color option').last.select_option

    all('#product_size option').last.select_option    

    
    all('#product_price').first.fill_in  with: @product.price
    all('#product_stock').first.set( @product.stock)
    all('#product_category_id option').last.select_option
    
  end
  
end
