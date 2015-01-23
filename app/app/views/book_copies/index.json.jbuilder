json.array!(@book_copies) do |book_copy|
  json.extract! book_copy, :id, :edition_id, :branch_id, :cover_type
  json.url book_copy_url(book_copy, format: :json)
end
