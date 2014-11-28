class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :region
      t.string :size
      t.string :tuition
      t.string :acceptance_rate
      t.string :SAT
      t.string :ACT
      t.string :GPA
      t.string :Rank_Forbes
      t.string :Percent_with_Financial_Aid

      t.timestamps

    end
  end
end
