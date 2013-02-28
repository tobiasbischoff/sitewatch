class CreateParts < ActiveRecord::Migration
  def change
    create_table :parts do |t|
      t.string :partynumber
      t.string :instancenumber
      t.string :serialnumber
      t.string :installdate
      t.string :partdescription
      t.string :itemnumber
      t.string :family
      t.string :pclass
      t.string :line
      t.string :csistatus

      t.timestamps
    end
  end
end
