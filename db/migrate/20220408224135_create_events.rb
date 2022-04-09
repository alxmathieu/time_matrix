class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.references :calendar, null: false, foreign_key: true
      t.string :name
      t.integer :duration
      t.text :attendees, array: true, default: []

      t.timestamps
    end
  end
end
