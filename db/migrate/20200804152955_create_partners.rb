class CreatePartners < ActiveRecord::Migration[5.2]
  def change
    create_table :partners do |t|
      t.string :name
      t.text :description
      t.string :logo
      t.string :status
      t.boolean :active
      t.integer :user_id

      t.timestamps
    end
  end
end
