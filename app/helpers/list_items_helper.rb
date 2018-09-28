module ListItemsHelper
  def truncate_list_item_title(list_item)
    list_item.title.truncate(30, omission: '')
  end
end
