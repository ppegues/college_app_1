class ChangingUseridToProfileid < ActiveRecord::Migration
  def change
    rename_column :favorites, :user_id, :profile_id
  end
end
