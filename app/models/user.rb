include ActiveModel::ForbiddenAttributesProtection
class User < ActiveRecord::Base
   attr_accessible :uid, :provider, :name, :oauth_token, :oauth_expires_at, :location

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.provider).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.location = auth.info.location
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end

end
