class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { thumb: '100x100>' }, default_url: 'default.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
