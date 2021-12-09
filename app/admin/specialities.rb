ActiveAdmin.register Speciality do
  permit_params :title, :short_caption, :years_to_study, :months_to_study, :created_at, :updated_at

  index do
    selectable_column
    id_column
    column :short_caption
    column :years_to_study
    column :months_to_study
    column :created_at
    column :updated_at
    actions
  end

  filter :short_caption
  filter :years_to_study
  filter :months_to_study
  filter :created_at
  filter :updated_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :short_caption
      f.input :years_to_study
      f.input :months_to_study
    end
    f.actions
  end

end
