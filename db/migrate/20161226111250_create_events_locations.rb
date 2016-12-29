class CreateEventsLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :events_locations, id: false do |t|
      t.belongs_to :event, index: true
      t.belongs_to :location, index: true
    end
  end
end
