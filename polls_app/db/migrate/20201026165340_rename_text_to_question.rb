class RenameTextToQuestion < ActiveRecord::Migration[5.2]
  def change
    rename_column :questions, :text, :question
  end
end
