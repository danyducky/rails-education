class CreateTeacherBindings < ActiveRecord::Migration[6.1]
  def change
    create_table :teacher_bindings do |t|
      t.belongs_to :user
      t.belongs_to :subject
      t.belongs_to :group

      t.timestamps
    end
  end
end
