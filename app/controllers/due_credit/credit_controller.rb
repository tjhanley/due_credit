module DueCredit
  class CreditController < ::ApplicationController
    def click_through
      @referrer = Referrer.find_by_token(params[:token])
      Referral.create!(referrer: @referrer)
      redirect_to @referrer.campaign.endpoint
    end
  end
end