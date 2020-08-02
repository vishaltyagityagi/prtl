class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.text :my_address
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
