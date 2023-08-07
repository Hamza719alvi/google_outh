class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]

  def self.from_google(email:, uid: )
    user = find_or_initialize_by(email: email, uid: uid, provider: 'google_oauth2')
    user.password = "12345678"
    user.save!
    user
  end
end
