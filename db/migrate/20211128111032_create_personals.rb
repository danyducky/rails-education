class CreatePersonals < ActiveRecord::Migration[6.1]
  def change
    create_table :personals do |t|
      t.belongs_to :user, foreign_key: true

      t.string :firstname
      t.string :surname
      t.string :patronymic
      t.datetime :birth_date

      t.timestamps
    end
  end
end
