class PageCategory < ActiveRecord::Base
  has_many :pages
  validates :slug, :presence => true,
            :uniqueness => true
end
