class CreateMeasurements < ActiveRecord::Migration[6.1]
  def change
    create_table :measurements do |t|
      t.datetime :measured_at
      t.float :temperature
      t.float :pressure
      t.float :humidity

      t.timestamps
    end
  end
end
