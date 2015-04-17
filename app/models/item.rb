class Item < ActiveRecord::Base
  
  attr_accessible :price, :name, :real, :description, :weight, :image_url
  
  validates :price, numericality: { greater_than: 0, allow_nil: true } 
  validates :name, :description, presence: true
  
  
  has_many :positions
  has_many :carts, through: :positions
  
  has_many :comments, as: :commentable
  has_many :images, as: :imageable, dependent: :destroy
  
  # has_one :image
  # accepts_nested_attributes_for :image
  after_initialize {  }
  after_save {  }
  after_create { puts "CREATE CREATE CREATE CREATE CREATE CREATE CREATE CREATE CREATE CREATE CREATE CREATE CREATE "  }
  after_update {  }
  after_destroy {  }

end
