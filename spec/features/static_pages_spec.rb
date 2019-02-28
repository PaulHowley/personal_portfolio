require 'rails_helper'

RSpec.describe "Static pages", type: :feature do

  describe "Home page" do

    it "should have the content 'Personal Portfolio' " do
      visit home_path

      expect(page).to have_content('Personal Portfolio')
    end
  end

  describe "About page" do

    it "should have the content 'about' " do
      visit about_path

      expect(page).to have_content('about')
    end
  end

  describe "Projects page" do

    it "should have the content 'Project Title' " do
      visit projects_path

      expect(page).to have_content('Project Title')
    end
  end

  describe "Contact page" do

    it "should have the content 'contact' " do
      visit contact_path

      expect(page).to have_content('contact')
    end
  end

end
