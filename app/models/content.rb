class Content < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  belongs_to :category
  has_attached_file :image,
                     styles: { medium: "400x600", thmb: "200x300"}
         validates_attachment_content_type :image,
                                      content_type: ["image/jpg","image/jpeg","image/png"]
  end