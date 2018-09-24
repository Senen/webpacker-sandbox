json.total @list_items.total_entries
json.total_pages @list_items.total_pages
json.per_page @list_items.per_page
json.current_page @list_items.current_page
json.last_page @list_items.previous_page.present? ? @list_items.previous_page : @list_items.total_pages
json.next_page_url url_for(host: "localhost:3000", page: @list_items.next_page)
json.prev_page_url @list_items.previous_page.present? ? url_for(host: "localhost:3000", page: @list_items.previous_page) : nil
json.from pagination_from(@list_items)
json.to pagination_to(@list_items)

json.data do
  json.array! @list_items, partial: 'vue/list_items/list_item', as: :list_item
end