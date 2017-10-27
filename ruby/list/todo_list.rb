class TodoList
  attr_accessor :get_items

  def initialize(to_do)
    @get_items = to_do
  end

  def add_item(to_do2)
    @get_items << to_do2
  end

  def delete_item(toBeDeleted)
    itemIndex = @get_items.index(toBeDeleted)
    @get_items.delete_at(itemIndex)
  end

  def get_item(index)
    @get_items[index]
  end
end
