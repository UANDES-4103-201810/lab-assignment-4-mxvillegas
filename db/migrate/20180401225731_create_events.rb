class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :start_date
      t.references :place, foreign_key: true

      t.timestamps
    end
  end

  def end_date_after_start_date?
    if start_date < created_date
      errors.add :start_date, "must be after created date"
    end
  end

end
