class AlterLatAndLngSightings < ActiveRecord::Migration
  def change
    change_table :sightings do |t|
      t.change :lat, :decimal, :precision => 7, :scale => 4
      t.change :lng, :decimal, :precision => 7, :scale => 4
    end
  end
end
