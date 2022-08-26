class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.string :workout_name
      t.string :workout_type
      t.string :location
      t.string :time
      t.string :intensity

      t.timestamps
    end
  end
end
