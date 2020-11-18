ActiveAdmin.register Intervention do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :intervention_start, :intervention_stop, :result, :report, :status, :elevator_id, :created_at, :updated_at, :author, :battery_id, :building_id, :column_id, :customer_id, :employee_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:intervention_start, :intervention_stop, :result, :report, :status, :elevator_id, :created_at, :updated_at, :author, :battery_id, :building_id, :column_id, :customer_id, :employee_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end