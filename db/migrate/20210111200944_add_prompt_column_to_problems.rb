class AddPromptColumnToProblems < ActiveRecord::Migration[6.0]
  def change
    add_column :problems, :prompt, :string
  end
end
