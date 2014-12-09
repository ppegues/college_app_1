class AddColumnsBack < ActiveRecord::Migration
  def change
    add_column :profiles, :GPA, :integer
    add_column :profiles, :ACT, :integer
    add_column :profiles, :SAT, :integer

    add_column :schools, :rank_forbes, :integer
    add_column :schools, :size, :integer
  end
end
