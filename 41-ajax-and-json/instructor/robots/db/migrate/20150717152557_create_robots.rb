class CreateRobots < ActiveRecord::Migration[5.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.string :address
      t.integer :model_number
      t.boolean :lasers
      t.boolean :japanese

      t.timestamps null: false
    end
  end
end
