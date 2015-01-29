class Spree::InspirationPost < ActiveRecord::Base
  has_one :inspiration_post_image, :as => :viewable, :dependent => :destroy, :class_name => 'Spree::InspirationPostImage'
  accepts_nested_attributes_for :inspiration_post_image, :reject_if => :all_blank

  def post_summary(chars=200)
    "#{body[0...chars]}... "
  end
end