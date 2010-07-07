class ProductCategory < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name

  scope :root_categories, where('parent_category_id is null')

  has_many :sub_categories, :class_name => "ProductCategory", :foreign_key => "parent_category_id"

end
