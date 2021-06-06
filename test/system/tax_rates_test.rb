require "application_system_test_case"

class TaxRatesTest < ApplicationSystemTestCase
  setup do
    @tax_rate = tax_rates(:one)
  end

  test "visiting the index" do
    visit tax_rates_url
    assert_selector "h1", text: "Tax Rates"
  end

  test "creating a Tax rate" do
    visit tax_rates_url
    click_on "New Tax Rate"

    fill_in "Max income", with: @tax_rate.max_income
    fill_in "Min income", with: @tax_rate.min_income
    fill_in "Rates", with: @tax_rate.rates
    fill_in "Tax amount", with: @tax_rate.tax_amount
    click_on "Create Tax rate"

    assert_text "Tax rate was successfully created"
    click_on "Back"
  end

  test "updating a Tax rate" do
    visit tax_rates_url
    click_on "Edit", match: :first

    fill_in "Max income", with: @tax_rate.max_income
    fill_in "Min income", with: @tax_rate.min_income
    fill_in "Rates", with: @tax_rate.rates
    fill_in "Tax amount", with: @tax_rate.tax_amount
    click_on "Update Tax rate"

    assert_text "Tax rate was successfully updated"
    click_on "Back"
  end

  test "destroying a Tax rate" do
    visit tax_rates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tax rate was successfully destroyed"
  end
end
