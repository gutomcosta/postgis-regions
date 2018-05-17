class CreateRegions < ActiveRecord::Migration[5.1]
  def change
    create_table :regions do |t|
      t.string :name
      t.multi_polygon :geom, srid: 4326

      t.timestamps
    end

    add_index :regions, :geom
  end
end
