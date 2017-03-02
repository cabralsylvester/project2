class User < ActiveRecord::Base
  has_many :biometrics, dependent: :destroy
end
