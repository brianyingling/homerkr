require 'spec_helper'

describe 'GET /' do
  it 'displays an Assignment link' do
    visit root_path
    page.should have_link('Assignments')
  end
end

describe 'GET /assignments/' do
  it 'should have a New link' do
    visit assignments_path
    page.should have_link("New")
  end
  it 'should show the list of assignments' do
    visit assignments_path
    page.should have_text('Assignments')
  end

end

describe 'GET /assignments/new' do
  it 'should show the New form through AJAX', :js=>true do
    visit assignments_path
    click_link('New')
    page.should have_button('Create Assignment')
    page.should have_button('Cancel')
  end
  it 'creates Assignment and Group objects', :js=>true do
    visit assignments_path
    click_link('New')
    fill_in('Name', :with=>'Homerkr')
    fill_in('assignment_group_size', :with=>2)
    click_button('Create Assignment')
    page.should_not have_button("Create Assignment")
  end
  it 'should display the Assignments', :js=>true do
    visit assignments_path
  end
end
