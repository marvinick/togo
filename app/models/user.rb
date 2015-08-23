class User < ActiveRecord::Base
  has_many :foods
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  # attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates_presence_of :username
  validates_uniqueness_of :username

  def admin?
    self.role == "admin"
  end

  def moderator?
    self.role == "moderator"
  end

end
