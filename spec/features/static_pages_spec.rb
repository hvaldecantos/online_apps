require 'spec_helper'
require 'support/utilities'

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

  subject { page }

  describe "Home page" do
    before { visit root_path } # to visit the root path before each exampl
    it { should have_selector('h1', text: 'Online APPs') }
    it { should have_title full_title("")}
    it { should_not have_title "Online App Container | Home" }
  end

  describe "Help page" do
    before { visit help_path }
    it { should have_selector('h1', text: 'Help') }
    it { should have_title "Online App Container | Help" }
  end

  describe "About page" do
    before { visit about_path }
    it { should have_selector('h1', text: 'About Us') }
    it { should have_title "Online App Container | About Us" }
  end

  describe "Contact page" do
    before { visit contact_path }
    it { should have_selector('h1', text: 'Contact') }
    it { should have_title "Online App Container | Contact" }
  end
end