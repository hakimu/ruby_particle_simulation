require 'minitest/autorun'
require 'minitest/rg'

require_relative '../lib/input'

class InputTest < Minitest::Test

  def setup
    @mock_input= Input.new("6","4")
    #@mock_user_input = @mock_input.cell_input
  end

  def test_first_input_row_has_width_fixnum
    assert_equal Fixnum, @mock_input.width.class
  end

   def test_first_input_row_has_height_fixnum
    assert_equal Fixnum, @mock_input.height.class
  end

  def test_first_input_row_width
    assert_equal 6, @mock_input.width
  end

  def test_first_input_row_height
    assert_equal 4, @mock_input.height
  end

  def test_nested_array_by_width
    skip 'need to determine the best way to test stdin'
    assert_equal 6, @mock_user_input.cell_input[0].length
  end

  def test_nested_array_by_height
    skip 'need to determine the best way to test stdin'
    assert_equal 4, @mock_user_input.cell_input.length
  end
end

