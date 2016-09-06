class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.column :animal_id, :integer
      t.column :region_id, :integer
      t.column :biologist, :string
      t.column  :lat, :decimal, :precision => 6, :scale => 4
      t.column  :lng, :decimal, :precision => 6, :scale => 4
      t.timestamps
    end
  end
end
