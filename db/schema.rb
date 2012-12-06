# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121206192509) do

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "superuser",              :default => false
    t.integer  "dnn_id"
    t.string   "dnn_username"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "centers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "position"
  end

  create_table "committee_levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "committee_roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "communication_services", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "communication_services_contacts", :force => true do |t|
    t.integer "communication_service_id"
    t.integer "contact_id"
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.string   "suite"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "fax_number"
    t.string   "email"
    t.string   "birth_date"
    t.integer  "help_status_id"
    t.integer  "martial_status_id"
    t.string   "opening_date"
    t.integer  "sex_id"
    t.integer  "member_status_id"
    t.string   "date_of_info"
    t.datetime "created_at",                                                                :null => false
    t.datetime "updated_at",                                                                :null => false
    t.integer  "help_statustype_id"
    t.string   "skype"
    t.string   "twitter"
    t.string   "facebook_url"
    t.string   "website_url"
    t.integer  "region_id"
    t.boolean  "i_am_the_contact_person_for_information_in_this_region", :default => false
    t.boolean  "i_am_the_contact_helper_for_information_in_this_region", :default => false
    t.integer  "center_id"
    t.boolean  "i_am_the_contact_person_for_information_in_this_center", :default => false
    t.boolean  "i_am_the_contact_helper_for_information_in_this_center", :default => false
    t.integer  "committee_role_id"
    t.integer  "committee_level_id"
    t.string   "enterprise_name"
    t.boolean  "business",                                               :default => false
    t.integer  "ses_professional_classification_id"
    t.integer  "sica_professional_classification_id"
    t.string   "spouse_name"
    t.boolean  "spouse_opened",                                          :default => false
    t.integer  "center_opened_at_id"
    t.string   "helper_witness"
    t.integer  "national_helper_id"
    t.integer  "help_level_id"
    t.string   "mobile_phone"
    t.boolean  "no_center"
    t.boolean  "show_me_in_web_directory"
    t.boolean  "show_me_in_print_directory"
    t.integer  "admin_user_id"
    t.boolean  "delegate",                                               :default => false
  end

  create_table "contacts_discover_infos", :force => true do |t|
    t.integer "contact_id"
    t.integer "discover_info_id"
  end

  create_table "contacts_race_ethnicities", :force => true do |t|
    t.integer "contact_id"
    t.integer "race_ethnicity_id"
  end

  create_table "discover_infos", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "help_levels", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "help_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "help_statustypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "martial_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "member_statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "national_helpers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "race_ethnicities", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "regions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ses_professional_classifications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sexes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sica_professional_classifications", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end
