class Pet < ActiveRecord::Base

  has_attached_file :image, styles: { logo: "50x50>", medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  validates :name, :species,  presence: true
  validates :age, numericality: {only_integer: true, greater_than: -1}

  belongs_to :user
end
