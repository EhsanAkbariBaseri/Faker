class AddNameToFakeCommands < ActiveRecord::Migration[5.0]
  def change
    add_column :fake_commands, :name, :string
  end
end
