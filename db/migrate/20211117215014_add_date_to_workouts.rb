class AddDateToWorkouts < ActiveRecord::Migration[6.1]
  def change
    add_column :workouts, :string, :date
  end
end
