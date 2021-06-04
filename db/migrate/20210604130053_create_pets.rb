class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :pet_type
      t.string :image_url
      t.text :description
      t.boolean :is_available, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
