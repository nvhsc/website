class User < ActiveRecord::Base
  devise :confirmable,
         :database_authenticatable,
         :lockable,
         :omniauthable,
         :registerable,
         :recoverable,
         :rememberable,
         :timeoutable,
         :trackable,
         :validatable
end
