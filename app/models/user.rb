class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # role: 'admin', 'user', 'editor', 'author', 'superAdmin', 'guest'

  def admin?
    role == 'admin'
  end

  def editor?
    role == 'editor' || admin?
  end

  # change role || update
  def make_admin!
    update!(role: 'admin')
  end

  def make_editor!
    update!(role: 'editor')
  end
end
