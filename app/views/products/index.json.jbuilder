json.array!(@products) do |product|
  json.extract! product, :id, :PrdName, :OwnerName, :PhoneNo, :MobileNo, :ZipCode, :Address, :iWeight, :Name1, :Cnt1, :iPrice, :Memo, :iPage, :OrderNo
  json.url product_url(product, format: :json)
end
