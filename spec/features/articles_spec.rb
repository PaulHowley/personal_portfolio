require 'rails_helper'

RSpec.describe "articles", type: :feature do
  before do
    allow(SendEmailCampaign).to receive(:call)
  end

  describe "View articles list" do

    it "should show the articles list" do
      articles = create_list(:article, 10)

      visit articles_path

      articles.each do |article|
        expect(page).to have_content(article.title)
      end
    end
  end

  describe "article show page" do
    let(:article) { create(:article) }

    it "shows the specific article" do
      visit article_path(article)

      expect(page).to have_content(article.title)
      expect(page).to have_content(article.text)
    end

    it "loads disqus", js: true do
      visit article_path(article)

      expect(page).to have_css('div[id="disqus_thread"]')
    end
  end

end
