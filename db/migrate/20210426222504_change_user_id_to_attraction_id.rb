class ChangeUserIdToAttractionId < ActiveRecord::Migration[6.0]
  def change
    rename_column :visits, :user_id, :attraction_id
  end
end
