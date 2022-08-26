class CreateImageusers < ActiveRecord::Migration[6.1]
  def change
    create_table :imageusers do |t|

      t.timestamps
    end
  end
end
