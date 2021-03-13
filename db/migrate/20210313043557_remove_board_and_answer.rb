class RemoveBoardAndAnswer < ActiveRecord::Migration[6.0]
  def change
    remove_column :problems, :board
    remove_column :problems, :answer
  end
end
