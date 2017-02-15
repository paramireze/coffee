class User < ApplicationRecord
  #role relational mapping
  #use bcrypt to secure our password
  has_secure_password


  has_and_belongs_to_many :roles

  # db query manipulations go here!
  scope :sorted, lambda { order("last_name desc")}
  scope :active, lambda { where(:deleted => nil)}

  # custom method
  def name
    "#{first_name} #{last_name}"
  end

  def is_admin
    admin = Role.find_by_name('Admin')
    admin ? has_role(admin.name) : false
  end

  def has_role(role)
    roles.any?{|a| a.name == role}
  end

end
