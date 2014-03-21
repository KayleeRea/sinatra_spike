require 'time'

class ItemContainer
  def menu
    list_of_menu_items=
    [Item.new(1, "Chicken Tika"),
     Item.new(2, "Cheese Tika"),
     Item.new(3, "Brocolli Tika")]
    list_of_menu_items
  end

  def add_menu_item(name)
    list_of_menu_items = self.menu
    list_of_menu_items.push(Item.new(4, name))
  end
end