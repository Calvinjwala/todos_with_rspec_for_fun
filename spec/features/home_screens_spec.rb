require 'rails_helper'

feature "Home Screen", :type => :feature do
  scenario "visiting the home screen" do
    #1. setup phase
    todo = create(:todo)

    #2. exercise phase
    visit root_path

    #3. verification phase
    expect(page).to have_text(todo.name)
  end

  scenario "creating a todo from the home screen" do
    #1. setup phase
    visit root_path

    #2. exercise phase
    fill_in "Name", with: "Write some specs!"
    click_button "Create"

    #3. verification phase
    expect(page).to have_text("Write some specs!")
  end
end
