class CreateTodos < ActiveRecord::Migration[6.0]
  def change
    create_table :todos do |t|
      t.string :description, null: false, limit: 255
      t.date :date, null: false
      t.boolean :done, default: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
