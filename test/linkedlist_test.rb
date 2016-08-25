require "minitest/autorun"
require "./lib/linked_list"
require "./lib/node"
require "minitest/pride"
require "pry"

class LinkedListTest < Minitest::Test

  def test_new_list
    list = LinkedList.new
    assert_equal LinkedList, list.class
  end

  def test_append

    list = LinkedList.new
    list.append("doop")

    assert_equal "deep", list.append("deep")
  end

  def test_prepend_with_empty_list
    list = LinkedList.new
    assert_equal "deep", list.prepend("deep")
    assert_equal "deep", list.head.data
  end

  def test_prepend_with_one_node
    list = LinkedList.new
    list.prepend("dop")
    assert_equal "deep", list.prepend("deep")
    assert_equal "deep", list.head.data
    assert_equal "dop", list.head.next_node.data
  end

  def test_can_count_multiple_nodes
    list = LinkedList.new
    list.append_node("doop")
    list.append_node("deep")


    assert_equal 2, list.count
  end

  def test_to_string
    list = LinkedList.new
    list.to_string("doop")

    assert_equal "doop deep", list.to_string("doop deep")
  end
end
