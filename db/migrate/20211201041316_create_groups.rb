class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.string :caption
      t.belongs_to :speciality

      t.timestamps
    end
  end
end
