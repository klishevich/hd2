class Offer < ActiveRecord::Base
  belongs_to :user
  has_many :crabs
  accepts_nested_attributes_for :crabs 

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
