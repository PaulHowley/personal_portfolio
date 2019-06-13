require 'rails_helper'

RSpec.describe "comments", type: :feature do
  describe "Adding a comment" do
    let(:article) { create(:article) }

    it "should add a comment" do
      visit article_path(article)

      fill_in("comment[commenter]", with: "Commenter name")
      fill_in("comment[body]", with: "Commenter text")
      click_button "Submit"

      expect(page).to have_content("Commenter name")
      expect(page).to have_content("Commenter text")
    end
  end

  describe "ensuring a commenter and body is entered" do
    let(:article) { create(:article) }
  
    it "should check that a commenter and body has been entered" do
      visit article_path(article)
  
      click_button "Submit"

      expect(page).to have_content("Commenter can't be blank Body can't be blank")
    end
  end

end

  