class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :scale
      t.references :beer, index: true
      t.references :user, index: true
      t.text :notes

      t.timestamps
    end
  end
end
