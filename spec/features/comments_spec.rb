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
end

  