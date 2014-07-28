class AddUsersToDemand < ActiveRecord::Migration
  def change
    # add_column :demands, :user, :reference
    add_reference :demands, :user, index: true
  end
end
