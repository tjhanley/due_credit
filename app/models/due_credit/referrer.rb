module DueCredit
  class Referrer < ActiveRecord::Base
    attr_accessible :token, :model, :model_id, :campaign_id
    belongs_to :campaign
    has_many :referrals
    validates_presence_of :token, :model, :model_id, :campaign_id
  end
end