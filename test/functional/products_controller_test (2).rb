require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
     @update = {
     make: 'XL 883R Sportster 883R',
         description: 'Overview: The 2013 Harley-Davidson Sportster !',
         specification: 'XL 883R Sportster 883R Features: DIMENSIONS!',
         image_url: 'my13-Sportster-883R-small.png ',
         price:  12850.0
    }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { description: @product.description, image_url: @product.image_url, make: @product.make, price: @product.price, specification: @product.specification, year: @product.year }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: @update
    assert_redirected_to product_path(assigns(:product))

  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
