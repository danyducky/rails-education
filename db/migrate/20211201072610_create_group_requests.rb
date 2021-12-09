class CreateGroupRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :group_requests do |t|
      t.references :user
      t.references :group
      t.string :comment

      t.timestamps
    end
  end
end
