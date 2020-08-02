class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :subject
      t.text :message
      t.string :phone_number

      t.timestamps
    end
  end
end
