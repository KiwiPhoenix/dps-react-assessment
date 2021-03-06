class CreateBeers < ActiveRecord::Migration[5.1]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :type
      t.belongs_to :brewery, foreign_key: true

      t.timestamps
    end
  end
end
