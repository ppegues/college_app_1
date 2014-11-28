class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :username
      t.string :email
      t.string :image
      t.string :high_school
      t.string :GPA
      t.string :SAT
      t.string :ACT
      t.text :Extras
      t.string :school_size
      t.string :region
      t.string :rank

      t.timestamps

    end
  end
end
