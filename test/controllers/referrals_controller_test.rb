require 'test_helper'

class ReferralsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get referrals_index_url
    assert_response :success
  end

  test 'should get count' do
    get referrals_count_url
    assert_response :success
  end

  test 'should get show' do
    get referrals_show_url
    assert_response :success
  end
end
