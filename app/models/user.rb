class User < ApplicationRecord
  has_many :favorite_animals, dependent: :destroy
  has_many :animals, through: :favorite_animals

  has_many :save_animals, dependent: :destroy
  has_many :animals, through: :save_animals

  has_many :comments, dependent: :destroy
  has_many :animals, through: :comments

  validates :username, :email, uniqueness: true
  validates_presence_of :username, :email, :first_name

  # def password=(password)
  #   self.password_digest = BCrypt::Password.create(password)
  # end

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  has_secure_password
end
