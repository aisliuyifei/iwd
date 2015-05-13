class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         # :omniauthable, :omniauth_providers => [:wechat]

  
  
   has_many :activities
   has_many :orgnized_activities,class_name: "Activity", foreign_key: :orgnizer_id
   has_many :authorizations
   
   
   # def find_for_oauth(auth)
   #     record = where(provider: auth.provider, uid: auth.uid.to_s).first
   #     record || create(provider: auth.provider, uid: auth.uid, email: auth.info.email, password: Devise.friendly_token[0,20])
   # end
  
end
