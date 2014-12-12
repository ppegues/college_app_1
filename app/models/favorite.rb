class Favorite < ActiveRecord::Base
  belongs_to :profile
  belongs_to :school

  def difficulty
    if self.profile.GPA.present? && school.avg_GPA.present? && self.profile.GPA > school.avg_GPA && (self.profile.SAT > school.avg_SAT || self.profile.ACT > school.avg_ACT)
      return "Safe"
    else
      if self.profile.GPA.present? && school.avg_GPA.present? && self.profile.GPA < school.avg_GPA && (self.profile.SAT < school.avg_SAT || self.profile.ACT < school.avg_ACT)
        return "Stretch"
      else
        if self.profile.GPA.present? && school.avg_GPA.present? && self.profile.GPA < school.avg_GPA && (self.profile.SAT > school.avg_SAT || self.profile.ACT > school.avg_ACT)
          return "Target"
        else
          if self.profile.GPA.present? && school.avg_GPA.present? && self.profile.GPA > school.avg_GPA && (self.profile.SAT > school.lower_SAT && self.profile.SAT < school.avg_SAT || self.profile.ACT > school.lower_ACT && self.profile.ACT < school.avg_ACT)
            return "Target"
          else
            return "Input Your Scores for Results"
          end
        end
      end
    end
  end
end
