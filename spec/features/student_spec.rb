require 'spec_helper'

describe 'Students' do
  describe 'GET /' do
    it 'displays a new student button', :js => true do
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

  describe 'Get /students/create' do
    it 'should display the new students', :js => true do
      visit root_path
      click_link('New Student')
      fill_in('student_name', :with => 'jeff')
      click_button('Create Student')
      page.should have_text('jeff')
    end
  end
end
