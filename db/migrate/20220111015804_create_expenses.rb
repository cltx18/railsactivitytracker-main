class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.string :name
      t.string :vendor
      t.string :qty
      t.string :cost
      t.string :unit
      t.date :date_added
      t.string :category
      t.string :description
      t.string :location

      t.timestamps
    end
  end
end
