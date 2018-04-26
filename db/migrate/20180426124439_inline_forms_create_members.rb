class InlineFormsCreateMembers < ActiveRecord::Migration[5.0]

  def self.up
    create_table :members do |t|
      t.string :name
      t.text :adreess
      t.belongs_to :delivery_point, default: 1
      t.integer :amount
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end

end
