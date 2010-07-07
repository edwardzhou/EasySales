class CreateProductCategories < ActiveRecord::Migration
  def self.up
    create_table :product_categories do |t|
      t.string :code
      t.string :name
      t.integer :parent_category_id
      t.boolean :actived
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :product_categories
  end
end
