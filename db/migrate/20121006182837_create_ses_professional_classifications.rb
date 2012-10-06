class CreateSesProfessionalClassifications < ActiveRecord::Migration
  def change
    create_table :ses_professional_classifications do |t|
      t.string :name
      t.timestamps
    end
  end
end
