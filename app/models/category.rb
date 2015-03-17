class Category < ActiveRecord::Base
  has_many :resources

  validates :name, presence: true, length: {in: 2..25}, uniqueness: true
  validates :description, presence: true, length: {in: 2..200}
end
