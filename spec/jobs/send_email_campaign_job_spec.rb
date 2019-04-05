require 'rails_helper'

RSpec.describe SendEmailCampaignJob, sidekiq: :inline do
  describe "delivering email campaign in background" do
    before do
      allow(SendEmailCampaign).to receive(:call)
    end

    it "should call the SendEmailCampaign class" do
      SendEmailCampaignJob.perform_async
      expect(SendEmailCampaign).to have_received(:call)
    end
  end
end