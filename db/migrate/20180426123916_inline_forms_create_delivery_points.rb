class InlineFormsCreateDeliveryPoints < ActiveRecord::Migration[5.0]

  def self.up
    create_table :delivery_points do |t|
      t.string :name 
      t.string :image 
      t.text :adreess 
      t.timestamps
    end
  end

  def self.down
    drop_table :delivery_points
  end

end
