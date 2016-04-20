class Content < ActiveRecord::Base
  has_attached_file :image,
                     styles: { medium: "400x600", thumb: "400x900"}
         validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
  end