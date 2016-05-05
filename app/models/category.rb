class Category < ActiveRecord::Base
  has_many :contents, ->{ order(:id)}
end
