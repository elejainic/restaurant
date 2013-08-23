class Restaurant < ActiveRecord::Base
  attr_accessible :address, :description, :name, :image, :pdf,:city, :state

  mount_uploader :image, ImageUploader
  mount_uploader :pdf, PdfUploader
  belongs_to :owner
  has_many :reservations
  
  acts_as_gmappable
  
   def gmaps4rails_address
    "#{city}, #{state}"
  end
end
