class User < ActiveRecord::Base
	#has_and_belongs_to_many :roles
	#has_one :role
	has_many :items
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 belongs_to :role
 def super_admin?
  self.role.name == "Super Admin"
 end
  # ROLES = %w[admin moderator author banned]
  # def role?(base_role)
  # 	ROLES.index(base_role.to_s) <= ROLES.index(role)
  # end
end
