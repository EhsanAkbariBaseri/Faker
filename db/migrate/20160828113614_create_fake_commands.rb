class CreateFakeCommands < ActiveRecord::Migration[5.0]
  def change
    create_table :fake_commands do |t|
      t.string :command
      t.references :fake_function, foreign_key: true
      t.timestamps
    end
  end
end
