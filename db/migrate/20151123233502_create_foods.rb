class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.text :item
      t.float :cost
      t.text :description
      t.string :vendor

      t.timestamps null: false
    end
  end
end
