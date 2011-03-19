class User < ActiveRecord::Base
  has_many :assignments
  has_many :roles, :through => :assignments

  acts_as_authentic

  def role_symbols
    roles.map do |role|
      role.name.underscore.to_sym
    end
  end
end
