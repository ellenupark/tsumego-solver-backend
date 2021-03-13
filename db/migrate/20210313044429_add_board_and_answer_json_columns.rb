class AddBoardAndAnswerJsonColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :board, :integer, default: [], array: true
    add_column :problems, :answer, :integer, default: [], array: true
  end
end
