class CreateCarteleras < ActiveRecord::Migration
  def change
    create_table :carteleras do |t|
      t.string :nombre
      t.string :rating

      t.timestamps null: false
    end
  end
end
