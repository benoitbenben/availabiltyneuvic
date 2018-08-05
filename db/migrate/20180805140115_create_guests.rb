class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :guest_name
      t.integer :number
      t.string :category
      t.references :booking

      t.timestamps
    end
  end
end
