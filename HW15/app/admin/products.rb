ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :name, :description, :price, :image, :category_id
  #
  # or
  #
  permit_params do
    permitted = [:name, :description, :price, :image, :category_id]
    permitted << :other if params[:action] == 'create' && current_user.try(:admin?)
    permitted
  end

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.input :category_id, as: :select, collection: Category.all.map { |c| [c.title, c.id] }
      f.input :image, as: :file
    end
    f.actions
  end
end
