class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :body_focus

      t.timestamps null: false
    end
  end
end
