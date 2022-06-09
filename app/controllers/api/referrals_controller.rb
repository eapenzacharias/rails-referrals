class Api::ReferralsController < ApplicationController
  before_action :authenticate_api_user!

  def index
    referrals = User.where(referrer: current_api_user.id )
    count = 0
    count = referrals.length if referrals
    msg = { success: true, data: referrals, count: count }
    render json: msg, status: :ok
  end

  def referred_by
    referrer = nil
    if current_api_user.referrer
      referrer_id = current_api_user.referrer
      referrer = User.find(referrer_id)
    end
    msg = { success: true, data: referrer}
    render json: msg, status: :ok
  end
end
