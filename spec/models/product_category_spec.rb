require 'spec_helper'

describe ProductCategory do

  before do
    category = Factory.create(:product_category, 
                   {:code => '001', :name => 'Cars', :actived => true})
    Factory.create(:product_category,
                   {:code => '001001', :name => 'SUV', :actived => true, :parent_category_id => category.id})
    Factory.create(:product_category,
                   {:code => '001002', :name => 'MVP', :actived => true, :parent_category_id => category.id})
  end

  it "should requires 'name'" do
    lambda {
      Factory.build(:product_category)
    }.call.should have_at_least(1).errors_on(:name)
  end

  it "should be unique for 'name'" do
    lambda {
      Factory.build(:product_category, {:name => 'Cars'})
    }.call.should have_at_least(1).errors_on(:name)
  end

  it "should has 1 root category" do
    ProductCategory.root_categories.should have(1).record
  end

  it "should has sub categories" do
    ProductCategory.root_categories[0].should have(2).sub_categories
  end

end
