class CreateSicaProfessionalClassifications < ActiveRecord::Migration
  def change
    create_table :sica_professional_classifications do |t|
      t.string :name
      t.timestamps
    end
  end
end
