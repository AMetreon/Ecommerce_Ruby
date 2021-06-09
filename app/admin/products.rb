# frozen_string_literal: true

ActiveAdmin.register Product do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :product_name, :unit_price, :stock, :image, :category_id, :product_image

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :product_image, as: :file
    end
    f.actions
  end

  # or
  #
  # permit_params do
  #   permitted = [:product_name, :unit_price, :stock, :image, :category_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end