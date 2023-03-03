class Event < ActiveRecord::Migration[6.1]
  def change
    create_table :event do |t|
      t.string :name
      t.string :date
      t.string :venue
      t.string :time
      t.string :price1
      t.string :price2

      t.timestamps
    end
  end
end
