class AddImageToDemands < ActiveRecord::Migration
  def self.up
    add_attachment :demands, :image
  end

  def self.down
    remove_attachment :demands, :image
  end
end
