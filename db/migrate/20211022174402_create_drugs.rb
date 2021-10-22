class CreateDrugs < ActiveRecord::Migration[6.1]
  def change
    create_table :drugs do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.string :frequency
      t.text :notes
      t.integer :patient_id

      t.timestamps
    end
  end
end
