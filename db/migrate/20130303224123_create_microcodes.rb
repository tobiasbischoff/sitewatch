class CreateMicrocodes < ActiveRecord::Migration
  def change
    create_table :microcodes do |t|
      t.string :serial
      t.string :version

      t.timestamps
    end
  end
end
