json.array!(@invoices) do |invoice|
  json.extract! invoice, :id, :DateSent, :DatePage, :NumEY, :OrderNo, :AccCode, :PrdName, :OwnerName, :PhoneNo, :MobileNo, :ZipCode, :Address, :iWeight, :Name1, :Cnt1, :iPrice, :Memo, :iPage
  json.url invoice_url(invoice, format: :json)
end
