# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'roo'


Exo.delete_all
ex = Roo::Excel.new("public/exos.xls")
ex.default_sheet = ex.sheets[0]              #Mention the sheet number (0 is the first sheet, 1 is second sheet, etc.)
2.upto(40) do | line |                              #Start and end of rows you want to include
  PrdName = ex.cell(line,'A')                   #Column A in spreadsheet
  OwnerName = ex.cell(line,'B')
  # db_column3 = ex.cell(line,'C')

  # x = Class.create(:db_column1 => db_column1, :db_column2 => db_column2, :db_column3 => db_column3)
  Exo.create(:PrdName => PrdName, :OwnerName => OwnerName )
  # , :db_column3 => db_column3)

end

Invoice.delete_all
ex1 = Roo::Excel.new("public/invoices.xls")
ex1.default_sheet = ex1.sheets[0]              #Mention the sheet number (0 is the first sheet, 1 is second sheet, etc.)
2.upto(3) do | line |                              #Start and end of rows you want to include   2줄부터 3줄까지
  DateSent = ex1.cell(line,'A')                   #Column A in spreadsheet
  DatePage = ex1.cell(line,'B')
  NumEY = ex1.cell(line,'C')
  OrderNo = ex1.cell(line,'D')
  AccCode = ex1.cell(line,'E')
  PrdName = ex1.cell(line,'F')
  OwnerName = ex1.cell(line,'G')
  PhoneNo = ex1.cell(line,'H')
  MobileNo = ex1.cell(line,'I')
  ZipCode = ex1.cell(line,'J')
  Address = ex1.cell(line,'K')
  iWeight = ex1.cell(line,'L')
  Name1	 = ex1.cell(line,'M')
  Cnt1 = ex1.cell(line,'N')    # O = iPrice
  Memo = ex1.cell(line,'P')
  iPage = ex1.cell(line,'Q')


  # x = Class.create(:db_column1 => db_column1, :db_column2 => db_column2, :db_column3 => db_column3)
  Invoice.create(
      :DateSent => DateSent,
      :DatePage => DatePage,
      :NumEY => NumEY,
      :OrderNo	=> OrderNo,
      :AccCode	=> AccCode,
      :PrdName	=> PrdName,
      :OwnerName	=> OwnerName,
      :PhoneNo	=> PhoneNo,
      :MobileNo	=> MobileNo,
      :ZipCode	=> ZipCode,
      :Address	=> Address,
      :iWeight	=> iWeight,
      :Name1 => Name1	,
      :iPrice => 0,
      :Cnt1	=> Cnt1	,
      # :iPrice	=> iPrice	,
      :Memo	=> Memo	,
      :iPage => iPage
     )

end


