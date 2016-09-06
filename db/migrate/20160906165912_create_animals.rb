class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.column :name, :string
    end
  end
end
