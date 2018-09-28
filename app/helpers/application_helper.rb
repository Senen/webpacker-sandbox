module ApplicationHelper

  def pagination_from(paginated_collection)
    ((paginated_collection.current_page - 1) * paginated_collection.per_page) + 1
  end

  def pagination_to(paginated_collection)
    ((paginated_collection.current_page - 1) * paginated_collection.per_page) + paginated_collection.per_page
  end
end
