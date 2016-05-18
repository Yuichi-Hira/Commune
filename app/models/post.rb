class Post < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body
  belongs_to :content
  belongs_to :category
end