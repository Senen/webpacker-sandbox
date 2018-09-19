json.extract! list_item, :id, :title, :description, :done_at
json.url vue_list_item_url(list_item)
json.edit_url edit_vue_list_item_url(list_item)
