class User < ActiveRecord::Base
  has_secure_password
  before_validation :default_values

  # friendly_id :full_name, use: [:slugged, :finders]

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  # validates :email, uniqueness: true, length: { in: 2..150}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i}, presence: true
  # validates :first_name, length: { in: 2..50}, presence: true
  # validates :last_name, length: { in: 2..75}, presence: true


  has_many :articles
  has_many :messages, dependent: :delete_all

  private

  def default_values
    # self.image = "https://ucarecdn.com/1386c488-f2db-4b63-959f-32656a7e35c6/" if self.image == ""
    # self.full_name = "#{self.first_name} #{self.last_name}"
  end


  def self.confirm(params)
    @user = User.where("email ILIKE ?", params[:email]).first
    @user.try(:authenticate, params[:password])
  end
end
