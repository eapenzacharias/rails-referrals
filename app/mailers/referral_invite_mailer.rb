class ReferralInviteMailer < ApplicationMailer
  def send_invite_mail
    email = params[:email]
    referral_link = "https://www.website.com/?referrer=#{current_api_user.id}"
    mail(to: email, subject: "#{current_api_user.name} invited you to join Rails Referrals!")
  end
end
