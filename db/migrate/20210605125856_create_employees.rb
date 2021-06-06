class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :staff_id
      t.string :email
      t.string :phone
      t.decimal :annual_salary
      t.decimal :rate
      t.datetime :create_date
      t.datetime :update_date

      t.timestamps
    end
    add_index :employees, [:id]
  end
end
