class CreateTacocorns < ActiveRecord::Migration
  def change
    create_table :tacocorns do |t|
      t.string :name
      t.integer :hunger

      t.timestamps null: false
    end
  end
end
