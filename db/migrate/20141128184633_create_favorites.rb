class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :school_id
      t.string :acceptance_difficulty

      t.timestamps

    end
  end
end
