class Member < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  belongs_to :delivery_point

  def _presentation
    "#{name} | #{amount} basket(s) at #{delivery_point.name}"
  end


  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :adreess , "adreess", :text_area ],
      [ :delivery_point , "delivery_point", :dropdown ],
      [ :amount , "amount", :text_field ],
    ]
  end


  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    "name"
  end


end
