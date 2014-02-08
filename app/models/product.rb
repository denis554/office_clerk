# RubyClerk product may represent one of three things
# - the normal product (all attributes work as expected)
# - a product line, in which case it may not be sold and inventory is meaningless
#                   other attributes (like price/cost) act as a template and are copied into children
#                   where they are then used.
# - a member of a product line, in which case the default view concatenates name and description and
#                   shows prices relative to it's parent
#

# attributes : see permitted_attributes + inventory + deleted_on

class Product < ActiveRecord::Base
  has_many :products, :dependent => :nullify
  store :properties, accessors: [ :color, :size , :model_number ] , coder: JSON
  belongs_to :product
  belongs_to :category
  belongs_to :supplier
  has_attached_file :main_picture
  has_attached_file :extra_picture

  # default product scope only lists non-deleted products
  default_scope {where(:deleted_on => nil).order('created_at DESC') }
  scope :online, -> { where(:online => true) }

  validates :price, :numericality => true
  validates :cost, :numericality => true
  validates :name, :presence => true

  before_save :generate_url_if_needed

  def generate_url_if_needed
    if deleted_on != nil or line?
      self.link = ""
    else
      self.link = name.gsub(" " , "_").downcase if link.blank? && name != nil
    end
  end

  def delete
    self.deleted_on = Date.today
    self.link = ""
    products.each {|p| p.delete}
    self
  end

  #this product represents a product line (ie is not sellable in itself)
  def line?
    !line_item? and !products.empty?
  end

  def full_name
    if line_item?
      product.name + " : " + self.name
    else
      self.name
    end
  end
  #this product is an item of a product line (so is sellable)
  def line_item?
    self.product_id != nil
  end

  def sellable?
    !line?
  end
  
  def new_line_item
    Product.new :tax => self.tax , :weight => self.weight , :cost => self.cost ,  :product_id => self.id , 
        :supplier_id => self.supplier_id , :category_id => self.category_id , :price => self.price
  end
end
