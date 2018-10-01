class RemoveConcerts < ActiveRecord::Migration[5.2]
  def change
    drop_table :concerts
  end
end
