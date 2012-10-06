class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :suite
      t.string :city
      t.string :state
      t.string :zip
      t.string :home_phone
      t.string :work_phone
      t.string :fax_number
      t.string :email
      t.string :birth_date
      t.integer :help_status_id
      t.integer :martial_status_id
      t.string :opening_date
      t.integer :sex_id
      t.integer :member_status_id
      t.string :date_of_info
      t.timestamps
    end
  end
end
