class RemoveColumns < ActiveRecord::Migration
  def change
    remove_column :profiles, :GPA, :string
    remove_column :profiles, :ACT, :string
    remove_column :profiles, :SAT, :string

    remove_column :schools, :Rank_Forbes, :string
    remove_column :schools, :size, :string
  end
end
