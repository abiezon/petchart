class CreateCharts < ActiveRecord::Migration[6.0]
  def change
    create_table :charts do |t|
      t.text :symptoms
      t.text :treatment
      t.date :date_attendance
      t.references :pet, null: false, foreign_key: true

      t.timestamps
    end
  end
end
