class CreatePatients < ActiveRecord::Migration[6.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.integer :user_id
      t.text :notes
      t.string :image_url

      t.timestamps
    end
  end
end
