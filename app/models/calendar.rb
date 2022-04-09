class Calendar < ApplicationRecord
  belongs_to :user
  has_many :events, dependent: :destroy

  # def self.from_google(name:, uid:, user_id:)
  #   #return nil unless email =~ /@mybusiness.com\z/
  #   create_with(uid: uid, name: name, user_id: user_id).find_or_create_by!(uid: uid)
  # end


end
