# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
# CREATE MEMBERS
Member.create(name:"Melissa")
Member.create(name:"Stephen")
Member.create(name:"Peter")
Member.create(name:"Pip")
Member.create(name:"Julie")
Member.create(name:"Julian")
Member.create(name:"Mark H")
Member.create(name:"Mark B")
Member.create(name:"Andrea")
Member.create(name:"Ana-Maria")

# CREATE APPS: Outputs [{"1"=>col_1_value,"2"=>col_2_value},{..row2...},{...row3..}]
apps_array_of_row_hashes = CSV.read('db/seed_fund_apps_v5_additional.csv', :encoding => 'windows-1251:utf-8', :headers => true, :header_converters => :symbol, :converters => :all).map {|row| Hash[row.map{|row_head,row_val| [row_head,row_val]}]}
apps_array_of_row_hashes.each { |row| App.create(row) }

## ASSOCIATE APPS WITH MEMBERS
array_of_member_rows_per_app = CSV.read('db/member_assign.csv', :encoding => 'windows-1251:utf-8', :headers => false);
array_of_member_rows_per_app.each_with_index { |row,index|
  puts index
  current_app = App.find_by(id: index+1)
  current_app.members << Member.find_by(name: row[1])
  current_app.members << Member.find_by(name: row[2])
  if row[3] != nil
    current_app.members << Member.find_by(name: row[3])
  end
}
# for each app in database
  # add members from this row
