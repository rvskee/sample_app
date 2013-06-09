require 'spec_helper'

describe "Static pages" do
  describe "Home Page" do

    it "should have the h1 'Sample App'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Sample App')
    end

    it "should have the right title" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('title', :test => "An creative Blog | Home")
    end
  end
  describe "Help page" do
  	it "should have the h1 ''Help" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :test => 'Help')
  	end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :test => "An creative Blog | Help")
    end
  end
  describe "About page" do
    it "should have the h1 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "An creative Blog | About")
    end
  end
end
