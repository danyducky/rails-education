ActiveAdmin.register Group do
  permit_params :caption, :speciality_id, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :caption
    column :speciality_id
    column :created_at
    column :updated_at
    actions
  end

  filter :caption
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :caption
      f.input :speciality_id
    end
    f.actions
  end

end
