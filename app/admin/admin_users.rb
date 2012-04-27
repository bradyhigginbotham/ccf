ActiveAdmin.register AdminUser do
  menu :label => "Administration"

  index do
    column :id
    column :name
    column :email
  end
end
