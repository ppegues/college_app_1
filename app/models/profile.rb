class Profile < ActiveRecord::Base
  has_many :schools, :through => :favorites
  validates :username, :presence => true, :uniqueness => true
  validates :email, :presence => true, :uniqueness => true
  validates :high_school, :presence => true
end
