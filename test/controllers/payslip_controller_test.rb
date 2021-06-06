require "test_helper"

class PayslipControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get payslip_index_url
    assert_response :success
  end
end
