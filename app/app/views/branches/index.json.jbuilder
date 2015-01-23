json.array!(@branches) do |branch|
  json.extract! branch, :id, :branch_name, :address, :phone_num
  json.url branch_url(branch, format: :json)
end
