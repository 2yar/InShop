class Product < ApplicationRecord
  has_attached_file :image, styles: { small: '64x64', med: '100x100', large: '200x200' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end
end
