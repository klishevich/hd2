class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :city
      t.string :duration
      t.string :description
      t.string :email

      t.timestamps
    end
  end
end
