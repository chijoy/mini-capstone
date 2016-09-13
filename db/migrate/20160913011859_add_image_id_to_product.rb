class AddImageIdToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :image_id, :string
  end
end
