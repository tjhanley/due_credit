module DueCredit
  class Referral < ActiveRecord::Base
    attr_accessible :referrers_id
    belongs_to :referrer
  end
end