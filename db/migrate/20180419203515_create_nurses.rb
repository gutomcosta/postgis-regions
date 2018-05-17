class CreateNurses < ActiveRecord::Migration[5.1]
  def change
    create_table :nurses do |t|
      t.string :name
      t.st_point :coordinates,  geographic: true, srid: 4326

      t.timestamps
    end
  end
end
