class CreateCarters < ActiveRecord::Migration
  def change
    create_table :carters do |t|
      t.string :cartelera
      t.string :nombre
      t.string :rating

      t.timestamps null: false
    end
  end
end
