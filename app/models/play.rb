class Play < ApplicationRecord
belongs_to :user
belongs_to :category
validates :title , presence: true , length: {minimum: 3 , maximum: 50} 
validates :description , presence: true , length: {minimum: 50 , maximum: 5000}
validates :director , presence: true , length: {minimum: 5 , maximum: 50} 
has_attached_file :play_img, :styles => { :play_index => "500x500>", :play_show => "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :play_img, :content_type => /\Aimage\/.*\z/
end
