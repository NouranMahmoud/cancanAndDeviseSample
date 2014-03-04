class Role < ActiveRecord::Base
  #attr_accessible :name

  has_many :users
  has_and_belongs_to_many :permissions
  validates :name, presence: true, uniqueness: true

  def set_permissions(permissions)
  permissions.each do |id|
    #find the main permission assigned from the UI
    permission = Permission.find(id)
    self.permissions << permission
  end
end
end
