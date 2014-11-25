class Favorite < ActiveRecord::Base
  belongs_to :profile
  belongs_to :school
  validates :school_name, :uniqueness => true
end
