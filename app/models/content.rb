class Content < ActiveRecord::Base
  has_attached_file :image,
                     styles: { medium: "400x600", thmb: "200x300"}
         validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
  end