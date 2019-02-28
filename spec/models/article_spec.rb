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
