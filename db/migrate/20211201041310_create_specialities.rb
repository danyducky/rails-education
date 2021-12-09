class CreateSpecialities < ActiveRecord::Migration[6.1]
  def change
    create_table :specialities do |t|
      t.string :title
      t.string :short_caption
      t.integer :years_to_study
      t.integer :months_to_study

      t.timestamps
    end
  end
end
