require 'rails_helper'

RSpec.describe "GET article#show", type: :feature do

  describe "article show page" do
    let(:article) { create(:article) }

    it "shows the specific article" do
      visit article_path(article)

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.text)
    end
  end

end
