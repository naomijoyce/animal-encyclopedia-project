class CreateSaveAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :save_animals do |t|
      t.references :user, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
