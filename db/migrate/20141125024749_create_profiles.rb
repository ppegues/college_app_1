class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :image
      t.string :high_school
      t.integer :GPA
      t.integer :SAT
      t.integer :ACT
      t.text :extras
      t.string :size
      t.integer :region_id
      t.string :rank

      t.timestamps

    end
  end
end
