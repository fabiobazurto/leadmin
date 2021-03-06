# coding: utf-8
require 'rails_helper'
 
RSpec.describe 'Creating a store', type: :feature do

  before(:all) do
    @countries = create_list(:country, 10)
    @cities = create_list(:city,10)
    @store1 = build(:store)
  end

  scenario 'with valid params' do
    visit new_store_path
    fill_in 'Nombre', with: 'Big Show Store'
    fill_in 'Calle principal', with: 'Storm Avenue'
    fill_in 'Número', with: '12345'
    fill_in 'Código Postal', with: '345666'

    first('#store_country_id option', minimum: 3).select_option
    first('#store_city_id option', minimum: 3).select_option    
    all('#store_country_id option').last.select_option

    all('#store_city_id option').last.select_option

    click_on 'Grabar'
    expect(page).to have_content('Tienda creada exitosamente')
    #click_on 'Next'
#    expect(page).to match /Big Show Store/    
    
  end

  scenario 'with invalid params' do
    visit new_store_path
    fill_in 'Nombre', with: 'Big Show Store'
    fill_in 'Calle principal', with: 'Storm Avenue'
    fill_in 'Número', with: 'dfdf88'
    fill_in 'Código Postal', with: '34ee66'
    
    all('#store_country_id option').last.select_option
    all('#store_city_id option').last.select_option    


    click_on 'Grabar'
    expect(page).to have_css('#error_explanation')
  end
  
end
