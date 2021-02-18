=begin
email:string
password_digest: string

has_secured_password add virtual attributes
password:string virtual
password_confirmation:string virtual
=end
class User < ApplicationRecord
  has_many :socials
  accepts_nested_attributes_for :socials, reject_if: proc { |attributes| attributes['name'].blank? || attributes['link'].blank?}
  has_secure_password

  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address"}
  validates :username, presence: true, uniqueness: true
  validates :firstname, presence: true
  validates :lastname, presence: true

end
