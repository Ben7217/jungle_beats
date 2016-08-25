require "./lib/node"
require "minitest/autorun"
require "minitest/pride"
require "pry"

class NodeTest < Minitest::Test

  def test_node_next_node
    node = Node.new("plop")
    assert_equal nil, node.next_node
  end

  def test_node_data
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_next_node
    node = Node.new("deep")
    next_node = Node.new("data")
    node.next_node = next_node

    assert_equal "data", node.next_node.data
  end
  

end
