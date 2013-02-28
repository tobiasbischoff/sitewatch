class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :partynumber
      t.string :partyname
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :postalcode
      t.string :city
      t.string :primaryce
      t.string :secondaryce

      t.timestamps
    end
  end
end
