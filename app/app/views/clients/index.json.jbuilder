json.array!(@clients) do |client|
  json.extract! client, :id, :client_name, :document_number, :address, :phone_num, :signin_date
  json.url client_url(client, format: :json)
end
