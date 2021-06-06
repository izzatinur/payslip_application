json.extract! employee, :id, :first_name, :last_name, :staff_id, :email, :phone, :annual_salary, :rate, :create_date, :update_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)
