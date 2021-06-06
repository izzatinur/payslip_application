# == Schema Information
#
# Table name: tax_rates
#
#  id                   :integer          not null, primary key
#  min_income           :integer
#  max_income           :integer
#  rates                 :decimal(, )
#  tax_from_lower_range :integer
#

class TaxRates < ActiveRecord::Base

  class << self

    def valid_tax_range(annual_salary)
      if annual_salary > 0
        TaxRange.where('min_income <= ? AND ? <= max_income', annual_salary, annual_salary).first
      else
        nil
      end
    end

    def annual_tax(annual_salary)
      if annual_salary > 0
        vtr = self.valid_tax_range(annual_salary)
        (vtr.tax_from_lower_range + ((annual_salary - (vtr.min_income-1))*vtr.rates)).round(3)
      else
        nil
      end
    end

  end
end
