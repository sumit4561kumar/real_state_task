class ContactMailer < ApplicationMailer
    CONTACT_EMAIL = "contact@example.com"
  
    def submission(asset, current_user)
      @asset = asset
      @current_user = current_user
      mail(to: asset.owner_email, cc: current_user.email, subject: "#{current_user.email} requested to buy asset")
    end
end
