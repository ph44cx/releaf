class Banner < ActiveRecord::Base
  dragonfly_accessor :image
  validates_presence_of :url
  belongs_to :banner_group
end
