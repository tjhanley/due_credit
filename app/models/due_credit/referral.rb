module DueCredit
  class Referral < ActiveRecord::Base
    attr_accessible :referrer
    belongs_to :referrer
    validates_presence_of :referrer_id
  end
end