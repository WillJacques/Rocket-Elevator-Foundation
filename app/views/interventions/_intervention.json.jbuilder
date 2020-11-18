json.extract! intervention, :id, :created_at, :updated_at, :intervention_start. :intervention_stop, :result, :report, :status, :author, :battery_id, :building_id, :column_id, :customer_id, :elevator_id, :employee_id
json.url intervention_url(intervention, format: :json)
