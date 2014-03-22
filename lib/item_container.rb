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

  def update_menu_item(id, updated_item_name)
    list_of_menu_items = self.menu
    list_of_menu_items.each do |item|
      if item.id == id.to_i
        item.name.replace(updated_item_name)
      end
    end
    list_of_menu_items
  end

  def delete_menu_item(id)
    list_of_menu_items = self.menu
    reduced_menu = []
    list_of_menu_items.each do |item|
      if item.id != id.to_i
        reduced_menu << item
      end
    end
    reduced_menu
  end
end