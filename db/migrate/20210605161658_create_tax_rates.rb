class CreateTaxRates < ActiveRecord::Migration[6.1]
  def change
    create_table :tax_rates do |t|
      t.integer :min_income
      t.integer :max_income
      t.decimal :rates
      t.integer :tax_amount

      t.timestamps
    end
    add_index :tax_rates, [:income_min, :income_max]
  end
end
