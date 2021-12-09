ActiveAdmin.register GroupCurator do
  permit_params :user_id, :group_id, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :user_id
    column :group_id
    column :created_at
    column :updated_at
    actions
  end

  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :user_id
      f.input :group_id
    end
    f.actions
  end

end
