class CreateNationalHelpers < ActiveRecord::Migration
  def change
    create_table :national_helpers do |t|
t.string :name
      t.timestamps
    end
  end
end
