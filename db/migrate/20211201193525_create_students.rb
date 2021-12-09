class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.belongs_to :user
      t.belongs_to :personal
      t.references :group

      t.timestamps
    end
  end
end
