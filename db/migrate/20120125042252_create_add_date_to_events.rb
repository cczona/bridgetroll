class CreateAddDateToEvents < ActiveRecord::Migration
  def change
    create_table :add_date_to_events do |t|
      t.datetime :date

      t.timestamps
    end
  end
end
