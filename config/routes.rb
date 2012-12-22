Subud::Application.routes.draw do
  devise_for :users

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  devise_for :users

  resources :access
  resources :contacts
  resources :home
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

  root :to => "home#index"
end
#== Route Map
# Generated on 20 Dec 2012 14:54
#
#                                         user_session POST       /users/sign_in(.:format)                                        devise/sessions#create
#                                 destroy_user_session DELETE     /users/sign_out(.:format)                                       devise/sessions#destroy
#                                        user_password POST       /users/password(.:format)                                       devise/passwords#create
#                                    new_user_password GET        /users/password/new(.:format)                                   devise/passwords#new
#                                   edit_user_password GET        /users/password/edit(.:format)                                  devise/passwords#edit
#                                                      PUT        /users/password(.:format)                                       devise/passwords#update
#                             cancel_user_registration GET        /users/cancel(.:format)                                         devise/registrations#cancel
#                                    user_registration POST       /users(.:format)                                                devise/registrations#create
#                                new_user_registration GET        /users/sign_up(.:format)                                        devise/registrations#new
#                               edit_user_registration GET        /users/edit(.:format)                                           devise/registrations#edit
#                                                      PUT        /users(.:format)                                                devise/registrations#update
#                                                      DELETE     /users(.:format)                                                devise/registrations#destroy
#                                           admin_root            /admin(.:format)                                                admin/dashboard#index
#                       batch_action_admin_admin_users POST       /admin/admin_users/batch_action(.:format)                       admin/admin_users#batch_action
#                                    admin_admin_users GET        /admin/admin_users(.:format)                                    admin/admin_users#index
#                                                      POST       /admin/admin_users(.:format)                                    admin/admin_users#create
#                                 new_admin_admin_user GET        /admin/admin_users/new(.:format)                                admin/admin_users#new
#                                edit_admin_admin_user GET        /admin/admin_users/:id/edit(.:format)                           admin/admin_users#edit
#                                     admin_admin_user GET        /admin/admin_users/:id(.:format)                                admin/admin_users#show
#                                                      PUT        /admin/admin_users/:id(.:format)                                admin/admin_users#update
#                                                      DELETE     /admin/admin_users/:id(.:format)                                admin/admin_users#destroy
#                           batch_action_admin_centers POST       /admin/centers/batch_action(.:format)                           admin/centers#batch_action
#                                        admin_centers GET        /admin/centers(.:format)                                        admin/centers#index
#                                                      POST       /admin/centers(.:format)                                        admin/centers#create
#                                     new_admin_center GET        /admin/centers/new(.:format)                                    admin/centers#new
#                                    edit_admin_center GET        /admin/centers/:id/edit(.:format)                               admin/centers#edit
#                                         admin_center GET        /admin/centers/:id(.:format)                                    admin/centers#show
#                                                      PUT        /admin/centers/:id(.:format)                                    admin/centers#update
#                                                      DELETE     /admin/centers/:id(.:format)                                    admin/centers#destroy
#                  batch_action_admin_committee_levels POST       /admin/committee_levels/batch_action(.:format)                  admin/committee_levels#batch_action
#                               admin_committee_levels GET        /admin/committee_levels(.:format)                               admin/committee_levels#index
#                                                      POST       /admin/committee_levels(.:format)                               admin/committee_levels#create
#                            new_admin_committee_level GET        /admin/committee_levels/new(.:format)                           admin/committee_levels#new
#                           edit_admin_committee_level GET        /admin/committee_levels/:id/edit(.:format)                      admin/committee_levels#edit
#                                admin_committee_level GET        /admin/committee_levels/:id(.:format)                           admin/committee_levels#show
#                                                      PUT        /admin/committee_levels/:id(.:format)                           admin/committee_levels#update
#                                                      DELETE     /admin/committee_levels/:id(.:format)                           admin/committee_levels#destroy
#                   batch_action_admin_committee_roles POST       /admin/committee_roles/batch_action(.:format)                   admin/committee_roles#batch_action
#                                admin_committee_roles GET        /admin/committee_roles(.:format)                                admin/committee_roles#index
#                                                      POST       /admin/committee_roles(.:format)                                admin/committee_roles#create
#                             new_admin_committee_role GET        /admin/committee_roles/new(.:format)                            admin/committee_roles#new
#                            edit_admin_committee_role GET        /admin/committee_roles/:id/edit(.:format)                       admin/committee_roles#edit
#                                 admin_committee_role GET        /admin/committee_roles/:id(.:format)                            admin/committee_roles#show
#                                                      PUT        /admin/committee_roles/:id(.:format)                            admin/committee_roles#update
#                                                      DELETE     /admin/committee_roles/:id(.:format)                            admin/committee_roles#destroy
#            batch_action_admin_communication_services POST       /admin/communication_services/batch_action(.:format)            admin/communication_services#batch_action
#                         admin_communication_services GET        /admin/communication_services(.:format)                         admin/communication_services#index
#                                                      POST       /admin/communication_services(.:format)                         admin/communication_services#create
#                      new_admin_communication_service GET        /admin/communication_services/new(.:format)                     admin/communication_services#new
#                     edit_admin_communication_service GET        /admin/communication_services/:id/edit(.:format)                admin/communication_services#edit
#                          admin_communication_service GET        /admin/communication_services/:id(.:format)                     admin/communication_services#show
#                                                      PUT        /admin/communication_services/:id(.:format)                     admin/communication_services#update
#                                                      DELETE     /admin/communication_services/:id(.:format)                     admin/communication_services#destroy
#                                history_admin_contact GET        /admin/contacts/:id/history(.:format)                           admin/contacts#history
#                          batch_action_admin_contacts POST       /admin/contacts/batch_action(.:format)                          admin/contacts#batch_action
#                                       admin_contacts GET        /admin/contacts(.:format)                                       admin/contacts#index
#                                                      POST       /admin/contacts(.:format)                                       admin/contacts#create
#                                    new_admin_contact GET        /admin/contacts/new(.:format)                                   admin/contacts#new
#                                   edit_admin_contact GET        /admin/contacts/:id/edit(.:format)                              admin/contacts#edit
#                                        admin_contact GET        /admin/contacts/:id(.:format)                                   admin/contacts#show
#                                                      PUT        /admin/contacts/:id(.:format)                                   admin/contacts#update
#                                                      DELETE     /admin/contacts/:id(.:format)                                   admin/contacts#destroy
#                                      admin_dashboard            /admin/dashboard(.:format)                                      admin/dashboard#index
#                    batch_action_admin_discover_infos POST       /admin/discover_infos/batch_action(.:format)                    admin/discover_infos#batch_action
#                                 admin_discover_infos GET        /admin/discover_infos(.:format)                                 admin/discover_infos#index
#                                                      POST       /admin/discover_infos(.:format)                                 admin/discover_infos#create
#                              new_admin_discover_info GET        /admin/discover_infos/new(.:format)                             admin/discover_infos#new
#                             edit_admin_discover_info GET        /admin/discover_infos/:id/edit(.:format)                        admin/discover_infos#edit
#                                  admin_discover_info GET        /admin/discover_infos/:id(.:format)                             admin/discover_infos#show
#                                                      PUT        /admin/discover_infos/:id(.:format)                             admin/discover_infos#update
#                                                      DELETE     /admin/discover_infos/:id(.:format)                             admin/discover_infos#destroy
#                       batch_action_admin_help_levels POST       /admin/help_levels/batch_action(.:format)                       admin/help_levels#batch_action
#                                    admin_help_levels GET        /admin/help_levels(.:format)                                    admin/help_levels#index
#                                                      POST       /admin/help_levels(.:format)                                    admin/help_levels#create
#                                 new_admin_help_level GET        /admin/help_levels/new(.:format)                                admin/help_levels#new
#                                edit_admin_help_level GET        /admin/help_levels/:id/edit(.:format)                           admin/help_levels#edit
#                                     admin_help_level GET        /admin/help_levels/:id(.:format)                                admin/help_levels#show
#                                                      PUT        /admin/help_levels/:id(.:format)                                admin/help_levels#update
#                                                      DELETE     /admin/help_levels/:id(.:format)                                admin/help_levels#destroy
#                     batch_action_admin_help_statuses POST       /admin/help_statuses/batch_action(.:format)                     admin/help_statuses#batch_action
#                                  admin_help_statuses GET        /admin/help_statuses(.:format)                                  admin/help_statuses#index
#                                                      POST       /admin/help_statuses(.:format)                                  admin/help_statuses#create
#                                new_admin_help_status GET        /admin/help_statuses/new(.:format)                              admin/help_statuses#new
#                               edit_admin_help_status GET        /admin/help_statuses/:id/edit(.:format)                         admin/help_statuses#edit
#                                    admin_help_status GET        /admin/help_statuses/:id(.:format)                              admin/help_statuses#show
#                                                      PUT        /admin/help_statuses/:id(.:format)                              admin/help_statuses#update
#                                                      DELETE     /admin/help_statuses/:id(.:format)                              admin/help_statuses#destroy
#                  batch_action_admin_help_statustypes POST       /admin/help_statustypes/batch_action(.:format)                  admin/help_statustypes#batch_action
#                               admin_help_statustypes GET        /admin/help_statustypes(.:format)                               admin/help_statustypes#index
#                                                      POST       /admin/help_statustypes(.:format)                               admin/help_statustypes#create
#                            new_admin_help_statustype GET        /admin/help_statustypes/new(.:format)                           admin/help_statustypes#new
#                           edit_admin_help_statustype GET        /admin/help_statustypes/:id/edit(.:format)                      admin/help_statustypes#edit
#                                admin_help_statustype GET        /admin/help_statustypes/:id(.:format)                           admin/help_statustypes#show
#                                                      PUT        /admin/help_statustypes/:id(.:format)                           admin/help_statustypes#update
#                                                      DELETE     /admin/help_statustypes/:id(.:format)                           admin/help_statustypes#destroy
#                  batch_action_admin_martial_statuses POST       /admin/martial_statuses/batch_action(.:format)                  admin/martial_statuses#batch_action
#                               admin_martial_statuses GET        /admin/martial_statuses(.:format)                               admin/martial_statuses#index
#                                                      POST       /admin/martial_statuses(.:format)                               admin/martial_statuses#create
#                             new_admin_martial_status GET        /admin/martial_statuses/new(.:format)                           admin/martial_statuses#new
#                            edit_admin_martial_status GET        /admin/martial_statuses/:id/edit(.:format)                      admin/martial_statuses#edit
#                                 admin_martial_status GET        /admin/martial_statuses/:id(.:format)                           admin/martial_statuses#show
#                                                      PUT        /admin/martial_statuses/:id(.:format)                           admin/martial_statuses#update
#                                                      DELETE     /admin/martial_statuses/:id(.:format)                           admin/martial_statuses#destroy
#                   batch_action_admin_member_statuses POST       /admin/member_statuses/batch_action(.:format)                   admin/member_statuses#batch_action
#                                admin_member_statuses GET        /admin/member_statuses(.:format)                                admin/member_statuses#index
#                                                      POST       /admin/member_statuses(.:format)                                admin/member_statuses#create
#                              new_admin_member_status GET        /admin/member_statuses/new(.:format)                            admin/member_statuses#new
#                             edit_admin_member_status GET        /admin/member_statuses/:id/edit(.:format)                       admin/member_statuses#edit
#                                  admin_member_status GET        /admin/member_statuses/:id(.:format)                            admin/member_statuses#show
#                                                      PUT        /admin/member_statuses/:id(.:format)                            admin/member_statuses#update
#                                                      DELETE     /admin/member_statuses/:id(.:format)                            admin/member_statuses#destroy
#                  batch_action_admin_national_helpers POST       /admin/national_helpers/batch_action(.:format)                  admin/national_helpers#batch_action
#                               admin_national_helpers GET        /admin/national_helpers(.:format)                               admin/national_helpers#index
#                                                      POST       /admin/national_helpers(.:format)                               admin/national_helpers#create
#                            new_admin_national_helper GET        /admin/national_helpers/new(.:format)                           admin/national_helpers#new
#                           edit_admin_national_helper GET        /admin/national_helpers/:id/edit(.:format)                      admin/national_helpers#edit
#                                admin_national_helper GET        /admin/national_helpers/:id(.:format)                           admin/national_helpers#show
#                                                      PUT        /admin/national_helpers/:id(.:format)                           admin/national_helpers#update
#                                                      DELETE     /admin/national_helpers/:id(.:format)                           admin/national_helpers#destroy
#                  batch_action_admin_race_ethnicities POST       /admin/race_ethnicities/batch_action(.:format)                  admin/race_ethnicities#batch_action
#                               admin_race_ethnicities GET        /admin/race_ethnicities(.:format)                               admin/race_ethnicities#index
#                                                      POST       /admin/race_ethnicities(.:format)                               admin/race_ethnicities#create
#                             new_admin_race_ethnicity GET        /admin/race_ethnicities/new(.:format)                           admin/race_ethnicities#new
#                            edit_admin_race_ethnicity GET        /admin/race_ethnicities/:id/edit(.:format)                      admin/race_ethnicities#edit
#                                 admin_race_ethnicity GET        /admin/race_ethnicities/:id(.:format)                           admin/race_ethnicities#show
#                                                      PUT        /admin/race_ethnicities/:id(.:format)                           admin/race_ethnicities#update
#                                                      DELETE     /admin/race_ethnicities/:id(.:format)                           admin/race_ethnicities#destroy
#                           batch_action_admin_regions POST       /admin/regions/batch_action(.:format)                           admin/regions#batch_action
#                                        admin_regions GET        /admin/regions(.:format)                                        admin/regions#index
#                                                      POST       /admin/regions(.:format)                                        admin/regions#create
#                                     new_admin_region GET        /admin/regions/new(.:format)                                    admin/regions#new
#                                    edit_admin_region GET        /admin/regions/:id/edit(.:format)                               admin/regions#edit
#                                         admin_region GET        /admin/regions/:id(.:format)                                    admin/regions#show
#                                                      PUT        /admin/regions/:id(.:format)                                    admin/regions#update
#                                                      DELETE     /admin/regions/:id(.:format)                                    admin/regions#destroy
#  batch_action_admin_ses_professional_classifications POST       /admin/ses_professional_classifications/batch_action(.:format)  admin/ses_professional_classifications#batch_action
#               admin_ses_professional_classifications GET        /admin/ses_professional_classifications(.:format)               admin/ses_professional_classifications#index
#                                                      POST       /admin/ses_professional_classifications(.:format)               admin/ses_professional_classifications#create
#            new_admin_ses_professional_classification GET        /admin/ses_professional_classifications/new(.:format)           admin/ses_professional_classifications#new
#           edit_admin_ses_professional_classification GET        /admin/ses_professional_classifications/:id/edit(.:format)      admin/ses_professional_classifications#edit
#                admin_ses_professional_classification GET        /admin/ses_professional_classifications/:id(.:format)           admin/ses_professional_classifications#show
#                                                      PUT        /admin/ses_professional_classifications/:id(.:format)           admin/ses_professional_classifications#update
#                                                      DELETE     /admin/ses_professional_classifications/:id(.:format)           admin/ses_professional_classifications#destroy
#                             batch_action_admin_sexes POST       /admin/sexes/batch_action(.:format)                             admin/sexes#batch_action
#                                          admin_sexes GET        /admin/sexes(.:format)                                          admin/sexes#index
#                                                      POST       /admin/sexes(.:format)                                          admin/sexes#create
#                                        new_admin_sex GET        /admin/sexes/new(.:format)                                      admin/sexes#new
#                                       edit_admin_sex GET        /admin/sexes/:id/edit(.:format)                                 admin/sexes#edit
#                                            admin_sex GET        /admin/sexes/:id(.:format)                                      admin/sexes#show
#                                                      PUT        /admin/sexes/:id(.:format)                                      admin/sexes#update
#                                                      DELETE     /admin/sexes/:id(.:format)                                      admin/sexes#destroy
# batch_action_admin_sica_professional_classifications POST       /admin/sica_professional_classifications/batch_action(.:format) admin/sica_professional_classifications#batch_action
#              admin_sica_professional_classifications GET        /admin/sica_professional_classifications(.:format)              admin/sica_professional_classifications#index
#                                                      POST       /admin/sica_professional_classifications(.:format)              admin/sica_professional_classifications#create
#           new_admin_sica_professional_classification GET        /admin/sica_professional_classifications/new(.:format)          admin/sica_professional_classifications#new
#          edit_admin_sica_professional_classification GET        /admin/sica_professional_classifications/:id/edit(.:format)     admin/sica_professional_classifications#edit
#               admin_sica_professional_classification GET        /admin/sica_professional_classifications/:id(.:format)          admin/sica_professional_classifications#show
#                                                      PUT        /admin/sica_professional_classifications/:id(.:format)          admin/sica_professional_classifications#update
#                                                      DELETE     /admin/sica_professional_classifications/:id(.:format)          admin/sica_professional_classifications#destroy
#                          batch_action_admin_comments POST       /admin/comments/batch_action(.:format)                          admin/comments#batch_action
#                                       admin_comments GET        /admin/comments(.:format)                                       admin/comments#index
#                                                      POST       /admin/comments(.:format)                                       admin/comments#create
#                                        admin_comment GET        /admin/comments/:id(.:format)                                   admin/comments#show
#                               new_admin_user_session GET        /admin/login(.:format)                                          active_admin/devise/sessions#new
#                                   admin_user_session POST       /admin/login(.:format)                                          active_admin/devise/sessions#create
#                           destroy_admin_user_session DELETE|GET /admin/logout(.:format)                                         active_admin/devise/sessions#destroy
#                                  admin_user_password POST       /admin/password(.:format)                                       active_admin/devise/passwords#create
#                              new_admin_user_password GET        /admin/password/new(.:format)                                   active_admin/devise/passwords#new
#                             edit_admin_user_password GET        /admin/password/edit(.:format)                                  active_admin/devise/passwords#edit
#                                                      PUT        /admin/password(.:format)                                       active_admin/devise/passwords#update
#                                     new_user_session GET        /users/sign_in(.:format)                                        devise/sessions#new
#                                                      POST       /users/sign_in(.:format)                                        devise/sessions#create
#                                 destroy_user_session DELETE     /users/sign_out(.:format)                                       devise/sessions#destroy
#                                                      POST       /users/password(.:format)                                       devise/passwords#create
#                                                      GET        /users/password/new(.:format)                                   devise/passwords#new
#                                                      GET        /users/password/edit(.:format)                                  devise/passwords#edit
#                                                      PUT        /users/password(.:format)                                       devise/passwords#update
#                                                      GET        /users/cancel(.:format)                                         devise/registrations#cancel
#                                                      POST       /users(.:format)                                                devise/registrations#create
#                                                      GET        /users/sign_up(.:format)                                        devise/registrations#new
#                                                      GET        /users/edit(.:format)                                           devise/registrations#edit
#                                                      PUT        /users(.:format)                                                devise/registrations#update
#                                                      DELETE     /users(.:format)                                                devise/registrations#destroy
#                                               access GET        /access(.:format)                                               access#index
#                                                      POST       /access(.:format)                                               access#create
#                                            new_acces GET        /access/new(.:format)                                           access#new
#                                           edit_acces GET        /access/:id/edit(.:format)                                      access#edit
#                                                acces GET        /access/:id(.:format)                                           access#show
#                                                      PUT        /access/:id(.:format)                                           access#update
#                                                      DELETE     /access/:id(.:format)                                           access#destroy
#                                             contacts GET        /contacts(.:format)                                             contacts#index
#                                                      POST       /contacts(.:format)                                             contacts#create
#                                          new_contact GET        /contacts/new(.:format)                                         contacts#new
#                                         edit_contact GET        /contacts/:id/edit(.:format)                                    contacts#edit
#                                              contact GET        /contacts/:id(.:format)                                         contacts#show
#                                                      PUT        /contacts/:id(.:format)                                         contacts#update
#                                                      DELETE     /contacts/:id(.:format)                                         contacts#destroy
