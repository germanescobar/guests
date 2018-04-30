class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :email
      t.string :name
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
