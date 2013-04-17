require 'spec_helper'

describe "Static pages" do

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_title "Online App Container | About Us"
    click_link "Help"
    page.should have_title "Online App Container | Help"
    click_link "Contact"
    page.should have_title "Online App Container | Contact"
    click_link "Home"
    page.should have_title "Online App Container"
  end

  describe "Home page" do

    it "should have the content 'Online APPs'" do
      visit root_path
      page.should have_selector('h1', text: 'Online APPs')
    end

    it "should have the base title" do
      visit root_path
      page.should have_title "Online App Container"
    end

    it "should not have a custom page title" do
      visit root_path
      page.should_not have_title "Online App Container | Home"
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit help_path
      page.should have_selector('h1', text: 'Help')
    end

    it "should have the title 'Help'" do
      visit help_path
      page.should have_title "Online App Container | Help"
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit about_path
      page.should have_selector('h1', text: 'About Us')
    end

    it "should have the title 'About Us'" do
      visit about_path
      page.should have_title "Online App Container | About Us"
    end
  end

  describe "Contact page" do

    it "should have the content 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'About Us'" do
      visit contact_path
      page.should have_title "Online App Container | Contact"
    end
  end
end