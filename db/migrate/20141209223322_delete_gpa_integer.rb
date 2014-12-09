class DeleteGpaInteger < ActiveRecord::Migration
  def change
    remove_column :profiles, :GPA, :integer
    remove_column :schools, :avg_GPA, :integer
  end
end
