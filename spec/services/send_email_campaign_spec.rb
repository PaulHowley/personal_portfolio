require 'rails_helper'

RSpec.describe SendEmailCampaign do
  include MailchimpHelper

  describe "Creating a mailchimp campaign" do
    it "should create the campaign and send it" do
      mock_campaigns

      subject { SendEmailCampaign }

      expect(subject.call).to eq(nil)
    end
  end
end