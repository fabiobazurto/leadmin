# coding: utf-8
require 'rails_helper'
 
RSpec.describe 'Create a product', type: :feature do

  before(:all) do
    @categories = create_list(:category, 10)
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
    
#    all('#product_category_id').first.set(@categories.first.id)
    fill_autocomplete "q", with: @categories.first.tag_list.to_s, select: @categories.first.name
    
  end

  def fill_autocomplete(field, options = {})
  fill_in field, :with => options[:with]

  page.execute_script %Q{ $('##{field}').trigger("focus") }
  page.execute_script %Q{ $('##{field}').trigger("keydown") }
  selector = "ul.ui-autocomplete a:contains('#{options[:select]}')"

  page.should have_selector selector
  page.execute_script "$(\"#{selector}\").mouseenter().click()"
end
  
end
