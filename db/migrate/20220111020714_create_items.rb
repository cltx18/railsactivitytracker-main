class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :amount
      t.string :category
      t.string :location
      t.date :date_added

      t.timestamps
    end
  end
end
