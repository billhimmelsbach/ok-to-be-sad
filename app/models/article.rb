class Article < ActiveRecord::Base
  belongs_to :user

  validates :title, length: { in: 2..75 }, presence: true
  validates :content, length: { in: 2..2000 }, presence: true

end
