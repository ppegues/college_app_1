class School < ActiveRecord::Base
  has_many :favorites
  has_many :profiles, :through => :favorites

  validates :name, :uniqueness => true
end
