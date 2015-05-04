class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name, limit: 100
      t.string :author
      t.decimal :price
      t.text :descript

      t.timestamps
    end
  end
end
