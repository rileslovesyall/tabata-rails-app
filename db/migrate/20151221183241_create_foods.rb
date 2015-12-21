class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :type
      t.integer :satiation

      t.timestamps null: false
    end
  end
end
