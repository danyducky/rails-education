class CreateCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :credentials do |t|
      t.references :user
      t.references :role

      t.timestamps
    end
  end
end
