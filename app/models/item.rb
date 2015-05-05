class Item < ActiveRecord::Base
  attr_accessible :price, :name, :real, :weight, :description, :image_url,
                  :image, :image_cach
  validates :price, numericality: { greater_than: 0, allow_nil: true } 
  validates :name, :description, presence: true
  
  
  has_many :positions
  has_many :carts, through: :positions
  
  has_many :comments, as: :commentable
  mount_uploader :image, ImageUploader
  #has_many :images, as: :imagestable
  has_and_belongs_to_many :items
  
  # has_one :image
  # accepts_nested_attributes_for :image


end
