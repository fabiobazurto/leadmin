# coding: utf-8
require 'rails_helper'
 
RSpec.describe 'Product Assignment', type: :feature do
  
  scenario 'with valid params' do
    given_you_have_stores
    given_you_have_products    
    #select a product
    @product = create(:product,stock: 200)
    all('.row-product a').first.click
    all('.submnu').last.click
    all('#product_store__stock').each do |element|
      element.set(20)
    end
    all('.btn-danger').first.click    
    expect(page).to_not have_css('#error_explanation')
  end

  scenario 'with more units than you have in product' do
    given_you_have_stores
    given_products_with_quite_less    
    #select a product
    all('.row-product a').first.click
    all('.submnu').last.click
    all('#product_store__stock').first.set(9999)
    all('.btn-danger').first.click
    expect(page).to have_css('#error_explanation')
  end

  
  def given_you_have_stores
    @stores = create_list(:store,10)
  end

  def given_you_have_products
    @products = create_list(:product,10)
    visit products_url
  end

  def given_products_with_quite_less
    @products = create_list(:product,10, stock: 4)
    visit products_url
  end

  
end
