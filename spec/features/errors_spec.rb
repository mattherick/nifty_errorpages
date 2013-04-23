require 'spec_helper'

feature "check pages" do
  
  scenario "check normal page without error" do
    visit "/articles"
    page.should have_content "Listing articles"
    
    visit "/articles/new"
    page.should have_content "New article"
  end
  
  scenario "check 404 error page" do
    visit "/this-path-does-not-exist"
    page.should have_content "Not Found."
    page.should have_content "The page you are looking for doesn't exist."
  end
  
  scenario "check 422 error page" do
    visit "/articles/simulate_422"
    page.should have_content "Change Rejected."
    page.should have_content "Maybe you tried to change something you didn't have access to."
  end
  
  scenario "check 500 error page" do
    visit "/articles/simulate_500"
    page.should have_content "Oops."
    page.should have_content "We're sorry, but something went wrong."
  end

end