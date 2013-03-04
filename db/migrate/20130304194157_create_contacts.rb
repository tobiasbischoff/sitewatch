class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :partynumber
      t.string :cname
      t.string :cemail
      t.string :cphone
      t.string :websupport
      t.string :ckind

      t.timestamps
    end
  end
end
