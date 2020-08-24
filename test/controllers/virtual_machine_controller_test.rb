require 'test_helper'

class VirtualMachineControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get virtual_machine_index_url
    assert_response :success
  end

end
