require 'test_helper'

class KindTest < ActiveSupport::TestCase
  test "should not save kind without description" do
    kind = Kind.new
    assert_not kind.save
  end

  test "save kind with description" do
    kind = Kind.new
    kind.description = 'One Description'

    assert kind.save
  end
end
