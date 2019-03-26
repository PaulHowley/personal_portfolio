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

  it "should create and send an email campaign" do
    #include MailchimpHelper
    
    #stub = stub_request(:post, "https://us20.api.mailchimp.com/3.0/campaigns/61330ecf85/actions/send").
    #expect(stub).to have_been_requested
    #mock_campaigns
    #expect(a_request(:post, "https://us20.api.mailchimp.com/3.0/campaigns")).to have_been_made
    response = SendEmailCampaign.call
    #expect(response).to eq(nil)
    expect(response.body.fetch(:status)).to eq "sent"
  
  end
end
