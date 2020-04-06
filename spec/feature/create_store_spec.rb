# coding: utf-8
require 'rails_helper'
 
RSpec.describe 'Creating a store', type: :feature do

  before(:all) do
    @store1 = build(:store)
  end

  scenario 'valid params' do
    visit new_store_path
    fill_in 'Nombre', with: 'Big Show Store'
    fill_in 'Calle principal', with: 'Storm Avenue'
    fill_in 'Número', with: '12345'
    fill_in 'Código Postal', with: '345666'
    select 'Ecuador', from: 'País', match: :first
    select 'Guayaquil', from:'Ciudad', match: :first
    click_on 'Grabar'
    expect(page).to have_content('Tienda creada exitosamente')
    click_on 'Next'
    expect(page).to have_content('Big Show Store')    
    
  end

  scenario 'invalid params' do
    visit new_store_path
    fill_in 'Nombre', with: 'Big Show Store'
    fill_in 'Calle principal', with: 'Storm Avenue'
    fill_in 'Número', with: 'dfdf88'
    fill_in 'Código Postal', with: '34ee66'
    select 'Ecuador', from: 'País', match: :first
    select 'Guayaquil', from:'Ciudad', match: :first
    click_on 'Grabar'
    expect(page).to have_content('error')
    
  end
  
end