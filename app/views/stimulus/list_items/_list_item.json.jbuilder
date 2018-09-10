json.extract! list_item, :id, :title, :description, :done_at, :position, :created_at, :updated_at
json.url stimulus_list_item_url(list_item, format: :json)
