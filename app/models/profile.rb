class Profile < ActiveRecord::Base
  has_many :schools, :through => :favorites
  validates :username, :presence => true
  validates :username, :uniqueness => true
  validates :high_school, :presence => true
end
