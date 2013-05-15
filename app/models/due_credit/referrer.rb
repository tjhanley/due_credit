module DueCredit
  class Referrer < ActiveRecord::Base
    attr_accessible :token, :model, :model_id, :campaign
    belongs_to :campaign
    has_many :referrals
    validates_presence_of :token, :model, :model_id, :campaign_id
    validates_uniqueness_of :token
  end
end