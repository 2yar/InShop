class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar_file, styles: {medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :avatar_file, content_type: /\Aimage\/.*\z/

end
