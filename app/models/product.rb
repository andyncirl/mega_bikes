class Product < ActiveRecord::Base
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  attr_accessible :description, :image_url, :make, :price, :specification, :year
  validates :make, :description, :image_url, :specification, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :make, uniqueness: true
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)$}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
      }
   private
# ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      return true
    else
      errors.add(:base, 'Line Items present')
      return false
    end
  end

  def self.search(search_query)
    if search_query
      find(:all,:conditions => ['make LIKE ?', "%#{search_query}%"])
    else
      find(:all)
    end
  end
end


