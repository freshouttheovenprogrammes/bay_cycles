class Accessory < ApplicationRecord
  validates_presence_of :name, :description, :price, :role

  enum role: ["active", "retired"]

  has_attached_file :image
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
end