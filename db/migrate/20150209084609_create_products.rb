class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :PrdName
      t.string :OwnerName
      t.string :PhoneNo
      t.string :MobileNo
      t.string :ZipCode
      t.string :Address
      t.integer :iWeight
      t.string :Name1
      t.string :Cnt1
      t.integer :iPrice
      t.string :Memo
      t.integer :iPage
      t.string :OrderNo

      t.timestamps null: false
    end
  end
end
