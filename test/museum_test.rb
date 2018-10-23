require 'minitest/autorun'
require 'minitest/pride'
require './lib/museum'
require 'pry'

class MuseumTest < Minitest::Test

  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_instance_of Museum, dmns
  end

  def test_it_exists
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal "Denver Museum of Nature and Science" , dmns.name
  end

  def test_it_can_start_with_none_exhibits
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal [], dmns.exhibits
  end

  def test_it_can_add_one_exhibit
    dmns = Museum.new("Denver Museum of Nature and Science")
    assert_equal [], dmns.add_exhibit("Dead Sea Scrolls", 10)
  end


end

# > dmns.add_exhibit("Dead Sea Scrolls", 10)
# > dmns.add_exhibit("Gems and Minerals", 0)
# ```
