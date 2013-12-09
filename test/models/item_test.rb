require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  test "item attributes must not be empty" do
    item = Item.new
    assert item.invalid?
    assert item.errors[:name].any?
    assert item.errors[:image_url].any?
    assert item.errors[:place].any?
    assert item.errors[:special].any?
    assert item.errors[:user].any?
    assert item.errors[:price].any?
    assert item.errors[:rating].any?
  end

  test "item price must be positive" do
    item = Item.new(name:     "steak",
                    image_url: "steak.jpg",
                    place: "mcdonalds",
                    special: "no",
                    user: "corey",
                    rating: 4,
                    date: Time.now )

    item.price = -1
    assert item.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      item.errors[:price]

    item.price = 0
    assert item.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      item.errors[:price]

    item.price = 1
    assert item.valid?
  end
end


