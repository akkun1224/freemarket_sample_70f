class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.references :item
      t.string :url, null: false
      t.timestamps
    end
  end
end
