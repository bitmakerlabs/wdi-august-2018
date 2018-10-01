class AddConcerts < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :name
      t.references :artist
      t.datetime :played_at
      t.integer :attendance

      t.timestamps
    end
  end
end
