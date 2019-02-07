require 'rails_helper'

RSpec.feature "Articles", type: :feature do
  context 'create new article' do
    scenario "with valid data" do
      # Prepare
      visit new_admin_article_path

      fill_in 'Title',  with: 'unique title'
      fill_in 'Text', with: 'text'

      # Act
      click_button 'Create Article'

      # Assert
      expect(page).to have_content('unique title')
    end

    scenario "with invalid data" do
      # Prepare
      visit new_admin_article_path

      # Act
      click_button 'Create Article'

      # Assert
      expect(page).to have_content("Title can't be blank Text can't be blank")
    end
  end

  context 'edit article' do

    scenario "should be successful" do
      # Prepare
      let!(article) do
        create(:article)
      end
       # Use factory bot here, use a let block
      visit edit_admin_article_path(article)

      within("form") do
        fill_in 'Title', with: 'unique title'
        fill_in 'Text', with: 'unique text'
      end

      #Act
      click_button 'Update Article'

      # Assert
      expect(page).to have_content('unique title unique text')
      end
    end
  end

  # context 'delete article' do
  #   scenario "should be successful", js: true do
  #     article = Article.create(title: 'title', text: 'text')
  #     visit admin_articles_path
  #     click_button 'Delete' # could an article count be applied here?
  #     # again what to apply here - it gives a pop up confirmation then redirects to the article list.
  #     #expect(page).to
  #   end
  # end
  
#end
