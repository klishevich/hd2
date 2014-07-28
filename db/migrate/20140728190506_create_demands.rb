class CreateDemands < ActiveRecord::Migration
  def change
    create_table :demands do |t|
      t.integer :adult
      t.integer :children
      t.string :duration
      t.text :description

      t.timestamps
    end
  end
end
