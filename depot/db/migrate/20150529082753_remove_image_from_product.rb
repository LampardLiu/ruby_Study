class RemoveImageFromProduct < ActiveRecord::Migration
  def change
    remove_column :products, :Image, :string
  end
end
