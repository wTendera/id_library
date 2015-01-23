json.array!(@editions) do |edition|
  json.extract! edition, :id, :isbn, :edition_name, :release_date, :book_id, :publisher_id
  json.url edition_url(edition, format: :json)
end
