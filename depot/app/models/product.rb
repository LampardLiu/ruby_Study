class Product < ActiveRecord::Base
  validates :title, :description, :image_url,  :presence => true
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :title, :uniqueness => true
  validates :image_url, :format => {
                          :with => %r{\.(gif|jpg|png)}i,
                          :message => '必须输入GIF、png、JPG图片'
                      }
end
