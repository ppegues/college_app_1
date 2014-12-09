class AddSchoolScores < ActiveRecord::Migration
  def change
    add_column :schools, :avg_GPA, :integer
    add_column :schools, :avg_SAT, :integer
    add_column :schools, :avg_ACT, :integer
    add_column :schools, :lower_SAT, :integer
    add_column :schools, :upper_SAT, :integer
    add_column :schools, :lower_ACT, :integer
    add_column :schools, :upper_ACT, :integer
  end
end
