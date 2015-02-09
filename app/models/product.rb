class Product < ActiveRecord::Base























  # # Insert Facilities
  # puts "Importing Facilities..."
  # spreadsheet = Roo::Excelx.new('app/assets/data/facilities.xlsx', nil, :ignore)
  # header = spreadsheet.row(1)
  # (2..spreadsheet.last_row).each do |i|
  #   row = Hash[[header, spreadsheet.row(i)].transpose]
  #   facility = Facility.find_by_id(row['id']) || Facility.new
  #   facility.attributes = row.to_hash.slice(*row.to_hash.keys)
  #   facility.save!
  # end
  # puts "Facilities imported. "


end
