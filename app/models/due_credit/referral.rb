module DueCredit
  class Referral < ActiveRecord::Base
    attr_accessible :referrers_id
    belongs_to :referrer
    validates_presence_of :referrers_id
  end
end