class AddFood < ActiveRecord::Migration[5.2]
    def change
      create_table :food do |t|
        t.string :name, null:false
        t.text :description, null:false
        t.belongs_to :user, null: false, foreign_key: true
        t.timestamps null: false
    end
    add_index :food, [:user_id, :name]
  end
end
