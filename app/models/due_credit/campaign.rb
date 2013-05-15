module DueCredit
  class Campaign < ActiveRecord::Base
    attr_accessible :name, :threshold, :endpoint
    has_many :referrers
    validates_presence_of :name, :endpoint
    validates_numericality_of :threshold
  end
end