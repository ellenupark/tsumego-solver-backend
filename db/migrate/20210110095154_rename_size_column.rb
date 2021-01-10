class RenameSizeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :problems, :size, :board_size
  end
end
