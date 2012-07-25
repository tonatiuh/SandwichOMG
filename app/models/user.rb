class User < ActiveRecord::Base
  def self.use_the_omniauth the_info
    where(the_info.slice("provider", "uid")).first || create_user_from_omniauth(the_info)
  end
  
  def self.create_user_from_omniauth the_info
    create! do |user|
      user.provider = the_info["provider"]
      user.uid = the_info["uid"]
      user.name = the_info["info"]["name"]
      user.nick_name = the_info["info"]["nickname"]
      user.profile_picture = the_info["info"]["image"]
      user.description = the_info["info"]["description"]
    end
  end
end
