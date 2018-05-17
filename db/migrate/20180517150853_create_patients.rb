class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.st_point :coordinates,  geographic: true, srid: 4326

      t.timestamps
    end
  end
end
