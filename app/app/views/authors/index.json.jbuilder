json.array!(@authors) do |author|
  json.extract! author, :id, :author_name, :birth_date, :death_date
  json.url author_url(author, format: :json)
end
