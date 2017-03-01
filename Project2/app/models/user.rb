class User < ActiveRecord::Base
  has_many :biometrics
end
