ActiveAdmin.register Credential do
  permit_params :user_id, :role_id, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :user_id
    column :role_id
    column :created_at
    column :updated_at
    actions
  end

  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :role_id
    end
    f.actions
  end

end
