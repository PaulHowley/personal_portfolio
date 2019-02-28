require 'rails_helper'

RSpec.describe "GET articles_index", type: :feature do

  describe "View articles list" do

    it "should show the articles list" do
      articles = create_list(:article, 10)

      visit articles_path

      articles.each do |article|
        page.should have_content(article.title)
      end
    end
  end

end
