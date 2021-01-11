class AddColumnToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :user_made, :boolean
  end
end
