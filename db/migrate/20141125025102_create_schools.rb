class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :location
      t.integer :region_id
      t.string :region_name
      t.integer :size
      t.integer :tuition
      t.integer :SAT
      t.integer :ACT
      t.integer :GPA
      t.integer :rank

      t.timestamps

    end
  end
end
