class DeliveryPoint < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  mount_uploader :image, ImageUploader

  def _presentation
    "#{name}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :image , "image", :image_field ],
      [ :adreess , "adreess", :text_area_without_ckeditor ], 
    ]
  end


  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    "name"
  end


end
