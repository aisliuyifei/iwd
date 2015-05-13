Rails.application.config.middleware.use OmniAuth::Builder do
  provider :wechat, "wxcabb8d7af2c4b12b", "a6ea9b4e2194652d0f4e287051527233",
  :authorize_params => {:redirect_uri => "http://diosapp.com.cn/auth/wechat/callback"}
end
