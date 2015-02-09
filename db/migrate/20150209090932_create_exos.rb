class CreateExos < ActiveRecord::Migration
  def change
    create_table :exos do |t|
      t.string :PrdName
      t.string :OwnerName

      t.timestamps null: false
    end
  end
end
