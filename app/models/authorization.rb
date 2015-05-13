class Authorization < ActiveRecord::Base
  belongs_to :user

  attr_accessible :provider, :uid, :user_id, :access_token, :expires_in, :refresh_token,
    :name, :nickname, :location, :signature, :avatar, :url
  
  
   validates :provider, :uid, presence: true 
   validates :uid, uniqueness: { scope: :provider }
  
  
   def self.find_or_create_from_auth_hash(auth_hash)
     provider, uid = auth_hash[:provider], auth_hash[:uid]
     authorization = where(provider: provider, uid: uid).first
     unless authorization.blank?
       authorization.assign_attributes(auth_hash)
       authorization.save
     else
       authorization = create(auth_hash)
     end
     authorization
   end
   def wechat?
     provider == 'wechat'
   end
   
   
  
end
