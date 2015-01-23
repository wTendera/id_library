json.array!(@borrows) do |borrow|
  json.extract! borrow, :id, :client_id, :specimen_id, :borrow_date, :return_date, :return_final_date
  json.url borrow_url(borrow, format: :json)
end
