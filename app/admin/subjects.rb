ActiveAdmin.register Subject do
  permit_params :caption, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :caption
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
    end
    f.actions
  end

end
