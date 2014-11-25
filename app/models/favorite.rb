class Favorite < ActiveRecord::Base
  belongs_to :profile
  belongs_to :school
end
