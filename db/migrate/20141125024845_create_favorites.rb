class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :profile_id
      t.integer :school_id
      t.integer :region_id

      t.timestamps

    end
  end
end
