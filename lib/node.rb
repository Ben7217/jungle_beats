class Node


  def initialize(sound, next_node = nil)
    @datainput = sound
    @next_node = next_node
  end

  def data
    @datainput
  end

  def next_node=(node)
    @next_node = node
  end

  def next_node
    @next_node
  end
end
