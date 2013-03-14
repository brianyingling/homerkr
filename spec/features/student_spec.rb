require 'spec_helper'

describe 'Students' do
  describe 'GET /' do
    it 'displays a new student button' do
      visit root_path
      page.should have_link('New Student')
    end
  end

  describe 'GET /students/new' do
    it 'displays the create student button', :js => true do
      visit root_path
      click_link('New Student')
      page.should have_button('Create Student')
    end
  end
end
