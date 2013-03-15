require 'spec_helper'

describe 'GET /' do
  it 'displays an Assignment link' do
    visit root_path
    page.should have_link('New Assignment')
  end
end

describe 'GET /assignments/' do
  it 'should have a New link' do
    visit assignments_path
    page.should have_link("New")
  end
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
    expect(Assignment.first.name).to eq 'Homerkr'
    expect(Group.where(:group_number).count).to eq 2
  end
end
