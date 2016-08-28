class CreateFakeFunctions < ActiveRecord::Migration[5.0]
  def change
    create_table :fake_functions do |t|
      t.string :name

      t.timestamps
    end
  end
end
