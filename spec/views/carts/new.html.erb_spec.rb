require 'rails_helper'

RSpec.describe "carts/new", type: :view do
  before(:each) do
    assign(:cart, Cart.new(
      total: "9.99",
      user: nil
    ))
  end

  it "renders new cart form" do
    render

    assert_select "form[action=?][method=?]", carts_path, "post" do
      assert_select "input[name=?]", "cart[total]"

      assert_select "input[name=?]", "cart[user_id]"
    end
  end
end
