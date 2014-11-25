class Profile < ActiveRecord::Base
  has_many :schools, :through => :favorites
end
