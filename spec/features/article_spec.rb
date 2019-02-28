require 'rails_helper'

  RSpec.feature "Articles", type: :feature do
    include AuthHelper
      before(:each) do
        http_login
      end

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
      let(:article) { create(:article) }
      scenario "should be successful" do
        # Prepare
        visit edit_admin_article_path(article)

        within("form") do
          fill_in 'Title', with: 'unique title'
          fill_in 'Text', with: 'unique text'
        end

        #Act
        click_button 'Update Article'

        # Assert
        expect(page).to have_content('unique title')
      end
    end

    # need chromium/selenium for this to work as uses javascript, also configuration in the capybara support file.
    context 'delete article' do 
      let!(:article) { create(:article) }

      scenario "should be successful", js: true do
        #Prepare
        visit admin_articles_path

        #Act
        click_link 'Delete'
        page.driver.browser.switch_to.alert.accept

        #Assert
        expect(page).not_to have_content(article.title)
      end
    end
  end
  
