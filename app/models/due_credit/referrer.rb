# Use to create a sharing token for your Referrer
#
#   DueCredit::Referrer.create(campaign: $due_credit_campaign, model: 'user', model_id: user.id)
#

module DueCredit
  class Referrer < ActiveRecord::Base
    attr_accessible :token, :model, :model_id, :campaign
    belongs_to :campaign
    has_many :referrals
    validates_presence_of :token, :model, :model_id, :campaign_id
    validates_uniqueness_of :token
    before_validation :on => :create do |record|
        record.ensure_unique
    end

    # Ensures that the token will be unique when created
    #
    #
    def ensure_unique(&block)
      begin
        self['token'] = (block ? block.call : self.class.generate_unique)
      end while self.class.exists?('token' => self['token'])

      self['token']
    end

    def self.generate_unique
      SecureRandom.hex(5)
    end

  end
end