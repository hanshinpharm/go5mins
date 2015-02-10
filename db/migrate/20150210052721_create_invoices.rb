class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :DateSent
      t.string :DatePage
      t.string :NumEY
      t.string :OrderNo
      t.string :AccCode
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

      t.timestamps null: false
    end
  end
end
