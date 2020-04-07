# coding: utf-8
require 'rails_helper'
 
RSpec.describe 'Create a product', type: :feature do

  before(:all) do
    @product = build(:product)
  end

  scenario 'with valid params' do
    visit new_product_path
    all('#product_name').first.fill_in  with: @product.name

    all('#product_color option').last.select_option

    all('#product_size option').last.select_option    

    
    all('#product_price').first.fill_in  with: @product.price
    all('#product_stock').first.fill_in  with: @product.stock
    all('#product_category').last.select_option
    
    all('.btn-primary').first.click
    expect(page).to_not have_css('#error_explanation')
    
  end

  scenario 'with stock zero' do
    visit new_product_path
    all('#product_name').first.fill_in  with: @product.name
    all('#product_name').first.fill_in  with: @product.color
    all('#product_name').first.fill_in  with: @product.price
    all('#product_name').first.fill_in  with: '0'
    
    all('.btn-primary').first.click
    expect(page).to have_css('#error_explanation')
    
  end
  
  
end
