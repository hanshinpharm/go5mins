# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'roo'



  ex = Roo::Excel.new("public/delme.xls")
  ex.default_sheet = ex.sheets[0]              #Mention the sheet number (0 is the first sheet, 1 is second sheet, etc.)
  2.upto(50) do | line |                              #Start and end of rows you want to include
    PrdName = ex.cell(line,'A')                   #Column A in spreadsheet
    OwnerName = ex.cell(line,'B')
    # db_column3 = ex.cell(line,'C')

    # x = Class.create(:db_column1 => db_column1, :db_column2 => db_column2, :db_column3 => db_column3)
    Exo.create(:PrdName => PrdName, :OwnerName => OwnerName )
    # , :db_column3 => db_column3)

  end


