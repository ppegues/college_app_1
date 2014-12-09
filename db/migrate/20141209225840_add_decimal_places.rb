class AddDecimalPlaces < ActiveRecord::Migration
  def change
    add_column :profiles, :GPA, :decimal, :precision =>30, :scale => 2
    add_column :schools, :avg_GPA, :decimal, :precision => 30, :scale => 2
  end
end
