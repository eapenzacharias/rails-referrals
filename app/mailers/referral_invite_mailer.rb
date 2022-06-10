class ReferralInviteMailer < ApplicationMailer
  def send_invite_mail
    email = params[:email]
    @name = params[:current_user_name]
    @referral_link = "https://www.website.com/?referrer=#{params[:current_user_id]}"
    mail(to: email, subject: "#{@name} invited you to join Rails Referrals!")
  end
end
