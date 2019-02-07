require 'rails_helper'

RSpec.describe Article, type: :model do
  subject do 
    build(:article)
  end

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
  
# This is alternative code I have found but not sure which is most appropriate.

# RSpec.describe Article, type: :model do
#   context 'validation tests' do
#     let(:article) { build(:random_article) }

#     it 'ensures title presence' do
#       article.title = nil
#       expect(article.save).to eq(false)
#     end

#     it 'ensures text presence' do
#       article.text = nil
#       expect(article.save).to eq(false)
#     end

#     it 'should save successfully' do
#       expect(article.save).to eq(true)
#     end
#   end
# end

  

