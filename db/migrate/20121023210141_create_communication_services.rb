class CreateCommunicationServices < ActiveRecord::Migration
  def change
    create_table :communication_services do |t|
      t.string :name
      t.timestamps
    end

    create_table :communication_services_contacts do |t|
      t.belongs_to :communication_service
      t.belongs_to :contact
    end

    remove_column :contacts, :receive_electronic_newsletter
    remove_column :contacts, :receive_hardcopy_newsletter
    remove_column :contacts, :receive_news_from_nat_office
    remove_column :contacts, :participate_in_my_regional_listserv

  end
end
