class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :calendars, dependent: :destroy
  has_many :events, through: :calendar



  def self.from_google(email:, full_name:, uid:, avatar_url:, access_token:, refresh_token:)
    #return nil unless email =~ /@mybusiness.com\z/
    #si le user existe, on l'update (pour les tokens/names), sinon, on le crée
    # if not self.exists?(email: email)
    #   self.create!(email: email, uid: uid, full_name: full_name, avatar_url: avatar_url, access_token: access_token, refresh_token: refresh_token)
    # else

    #   self.where(email: email).update(email: email, uid: uid, full_name: full_name, avatar_url: avatar_url, access_token: access_token, refresh_token: refresh_token)
    # end
    create_with(uid: uid, full_name: full_name, avatar_url: avatar_url, access_token: access_token, refresh_token: refresh_token).find_or_create_by!(email: email)
  end

end
