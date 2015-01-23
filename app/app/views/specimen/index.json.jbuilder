json.array!(@specimen) do |specimen|
  json.extract! specimen, :id, :edition_id, :branch_id, :cover_type
  json.url specimen_url(specimen, format: :json)
end
