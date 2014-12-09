class RemoveGpa < ActiveRecord::Migration
  def change
    remove_column :profiles, :GPA, :decimal
    remove_column :schools, :avg_GPA, :decimal
  end
end
