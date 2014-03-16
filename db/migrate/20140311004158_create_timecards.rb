class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.string :title
      t.text :note
      t.datetime :completed

      t.timestamps
    end
  end
end
