class CreateSystems < ActiveRecord::Migration[6.1]
  def change
    create_table :systems do |t|
      t.string :caption
      t.string :short_caption
      t.string :route

      t.timestamps
    end
  end
end
