class CreateLarderdbs < ActiveRecord::Migration[5.2]
  def change
    create_table :larderdbs do |t|
      t.string :food
      t.text :nutrition

      t.timestamps
    end
  end
end
