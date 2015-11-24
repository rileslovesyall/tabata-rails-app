class CreateFavoriteExercises < ActiveRecord::Migration
  def change
    create_table :favorite_exercises do |t|

      t.timestamps null: false
    end
  end
end
