ActiveAdmin.register Sex do
  menu :parent => "Settings",:if => proc{ current_admin_user.super_user? }
end
