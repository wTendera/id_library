json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :publisher_name, :creation_date, :address, :phone_num
  json.url publisher_url(publisher, format: :json)
end
