class Produce < ActiveRecord::Base
  validates :title, :description, :image_url, :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01} 
  validates :title, :uniqueness => true
  validates :image_url, :format => {:with => %r{\.(gif|png|jpg)$}i, :multiline => true ,:message => '图片必须是 gif png jpg中的一种'}
end
