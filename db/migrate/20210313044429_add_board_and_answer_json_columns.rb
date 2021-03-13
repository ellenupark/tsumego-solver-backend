class AddBoardAndAnswerJsonColumns < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :board, :jsonb, default: [], array: true
    add_column :problems, :answer, :jsonb, default: [], array: true
  end
end
