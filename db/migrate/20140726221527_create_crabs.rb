class CreateCrabs < ActiveRecord::Migration
  def change
    create_table :crabs do |t|
      t.string :name
      t.references :offer

      t.timestamps
    end
  end
end
