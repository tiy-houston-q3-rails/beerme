class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.references :brewery, index: true
      t.decimal :abv
      t.string :photo
      t.string :style

      t.timestamps
    end
  end
end
