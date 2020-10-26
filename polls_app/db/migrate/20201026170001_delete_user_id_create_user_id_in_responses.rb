class DeleteUserIdCreateUserIdInResponses < ActiveRecord::Migration[5.2]
  def change
    remove_column :responses, :user_id
    add_column :responses, :user_id, :integer, null:false
    add_index :responses, :user_id
  end
end
