class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :email
      t.text :contact

      t.timestamps
    end
  end
end
