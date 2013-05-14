module DueCredit
  class CreditController < ::ApplicationController
    def click_through
      @referrer = Referrer.find_by_token(params: token)
    end
  end
end