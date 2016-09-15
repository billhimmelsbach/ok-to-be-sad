class User < ActiveRecord::Base
  has_secure_password

  has_many :articles, dependent: :delete_all
  has_many :messages, dependent: :delete_all

  before_validation :default_values

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, uniqueness: true, length: { in: 2..150}, format: { with: VALID_EMAIL_REGEX}, presence: true
  validates :first_name, length: { in: 2..50}, presence: true
  validates :last_name, length: { in: 2..75}, presence: true
  validates :password, length: { in: 2..150}, presence: true
  validates :password_confirmation, presence: true

  private

  def default_values
    self.image = "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/" if self.image == ""
  end


  def self.confirm(params)
    @user = User.where("email ILIKE ?", params[:email]).first
    @user.try(:authenticate, params[:password])
  end
end
