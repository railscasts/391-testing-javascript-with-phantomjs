require 'spec_helper'

describe "Orders" do
  it "validates card number", js: true do
    visit new_order_path
    fill_in "Credit Card Number", with: "1234"
    page.should have_content("Invalid card number")
  end
  
  it "fetches more orders when scrolling to bottom", js: true do
    11.times { |n| Order.create! number: n+1 }
    visit orders_path
    page.should have_content('Order #1')
    page.should_not have_content('Order #11')
    page.evaluate_script("window.scrollTo(0, document.height)")
    page.should have_content('Order #11')
  end
end
