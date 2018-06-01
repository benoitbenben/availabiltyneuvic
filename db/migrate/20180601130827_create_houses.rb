class CreateHouses < ActiveRecord::Migration[5.2]
  def change
    create_table :houses do |t|
      t.references :user_id
      t.string :name
      t.boolean  :availability, default: true

      t.timestamps
    end
  end
end
