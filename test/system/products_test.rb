require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  # 2. test exercise setup
  test 'visiting the index page works' do
    visit root_path
    # use launchy to show the test results from headless chrome
    save_and_open_screenshot
    # 3. verfiy
    assert_selector 'h1', text: 'Awesome Products'
    assert_selector '.card-product', count: Product.count
  end

  test 'let a user who has signed in to create a new product' do
    login_as users(:satoshi)
    visit "/products/new"
    # save_and_open_screenshot

    fill_in "product_name", with: "Le Wagon"
    fill_in "product_tagline", with: "Change your life: Learn to code"
    # save_and_open_screenshot

    click_on 'Create Product'
    # save_and_open_screenshot

    # Should be redirected to Home with new product
    assert_equal root_path, page.current_path
    assert_text "Change your life: Learn to code"
  end
end
