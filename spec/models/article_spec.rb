require 'rails_helper'

RSpec.describe Article, type: :model do
  feature 'admin creates an article' do

    scenario 'they see the article on the page' do
      visit new_admin_article_path
    end

  subject {described_class.new(title: "Anything", text: "Lorem ipsum")}

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a title" do
      subject.title = nil
      expect(subject).to_not be_valid
    end
  
    it "is not valid without body text" do
      subject.text = nil
      expect(subject).to_not be_valid
    end

  end
  
  
end

