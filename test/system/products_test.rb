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
end
