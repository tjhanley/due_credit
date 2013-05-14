module DueCredit
  class Campaign < ActiveRecord::Base
    attr_accessible :name, :threshold
    has_many :referrers
  end
end