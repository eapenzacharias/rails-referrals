class Api::ReferralsController < ApplicationController
  before_action :authenticate_api_user!

  def index
    referrals = User.where(referrer: current_api_user.id )
    count = 0
    count = referrals.length if referrals
    msg = { success: true, data: referrals, count: count }
    render json: msg, status: :ok
  end
end
