require 'test_helper'

class Api::ReferralsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get api_referrals_index_url
    assert_response :success
  end

  test 'should get count' do
    get api_referrals_count_url
    assert_response :success
  end

  test 'should get show' do
    get api_referrals_show_url
    assert_response :success
  end
end
