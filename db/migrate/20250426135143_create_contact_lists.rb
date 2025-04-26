class CreateContactLists < ActiveRecord::Migration[7.1]
  def change
    create_table :contact_lists do |t|
      t.string :name
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
