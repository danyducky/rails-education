class CreateSystemBindings < ActiveRecord::Migration[6.1]
  def change
    create_table :system_bindings do |t|
      t.references :system
      t.references :role

      t.timestamps
    end
  end
end
