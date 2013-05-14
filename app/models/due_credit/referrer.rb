module DueCredit
  class Referrer < ActiveRecord::Base
    attr_accessible :token, :model, :model_id, :campaign_id
    belongs_to :campaign
    has_many :referrals
  end
end