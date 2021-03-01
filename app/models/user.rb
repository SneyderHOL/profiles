=begin
email:string
password_digest: string

has_secured_password add virtual attributes
password:string virtual
password_confirmation:string virtual
=end
class User < ApplicationRecord
  has_many :socials, dependent: :delete_all
  has_one_attached :image
  accepts_nested_attributes_for :socials, reject_if: proc { |attributes| attributes['name'].blank? || attributes['link'].blank?}
  has_secure_password

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: /\A[^@\s]+@[^@\s]+\z/,
                              message: "must be a valid email address"}
  validates :username, presence: true,
                       uniqueness: { case_sensitive: false }
  validates :firstname, presence: true
  validates :lastname, presence: true
  validate :image_type_validation
  
  def social_media(social_media = nil)
    links = []
    if social_media
      social_media.each { |social| links.push(social.link)}
      return links.join(", ")
    end
    ""
  end

  private

  def image_type_validation
    valid_types = ["image/png", "image/jpeg"]
    if image.attached? && !image.content_type.in?(valid_types)
      errors.add(:image, "must be a JPEG or PNG file.")
    end
  end
end
