ActiveAdmin.register Gym do
  permit_params :name

  filter :name
  filter :created_at

  index do
    selectable_column
    id_column
    column :name
    column :created_at
    actions
  end

  show do
    attributes_table do
      row :name
    end

    panel('Members') do
      table_for gym.gym_memberships do
        column('Email') {|m| m.user.email}
      end
    end

    active_admin_comments
  end

  form do |f|
    f.inputs do
      f.input :name
    end
    f.actions
  end
end
