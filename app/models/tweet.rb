class Tweet < ActiveRecord::Base
  attr_accessible :message, :references
end
