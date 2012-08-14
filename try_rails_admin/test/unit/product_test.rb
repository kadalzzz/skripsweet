require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  
  def test_save_without_name
    product = Product.new(:description => 'test description')
    assert_equal product.valid?, false
    assert_equal product.save, false
  end
  
  def test_save_with_name
    product = Product.new(:name => "test_name" ,:description => 'test description')
    assert_equal product.valid?, true
    assert_equal product.save, true
  end

  def test_uniqueness_name_true
    product = Product.new(:name => 'product2', :description => 'test description2')
    assert_not_equal product.name, products(:product1).name
    assert_equal product.save, true
  end
  
  def test_uniqueness_name_false
    product = Product.new(:name => 'product1', :description => 'test description')
    assert_equal product.name, products(:product1).name
    assert_equal product.save, false
  end
  
  def test_search_succes
   #Product.create([
    # {:name => "product_test1", :description => "just test1"}, {:name => "product_test2", :description => "just test too"},
   #])
    assert_not_nil Product.search("product")
    assert_equal Product.search("product")[1].name, "product_unique_2"
  end
  
  def test_relation_between_product_and_category
    category = Category.create(:name => "try")
    assert_not_nil category
    product = Product.create(:name => "new_title", :description => "description description description", :category_id => category.id)
    assert_not_nil category.products
    #assert_equal post.comments.empty?, false
    assert_equal category.products[0].class, Product
  end
  
end
