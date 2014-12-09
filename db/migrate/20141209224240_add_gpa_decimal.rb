class AddGpaDecimal < ActiveRecord::Migration
  def change
    add_column :profiles, :GPA, :decimal
    add_column :schools, :avg_GPA, :decimal
  end
end
