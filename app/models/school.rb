class School < ActiveRecord::Base
  has_many :profiles, :through => :favorites
end
