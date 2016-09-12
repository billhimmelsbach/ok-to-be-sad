class Article < ActiveRecord::Base
  belongs_to :user
  # before_validation :default_values

  validates :title, length: { in: 2..75 }, presence: true
  # validates :content, length: { in: 2..2000 }, presence: true

  # extend FriendlyId
  # friendly_id :title, use: [:slugged, :finders]

  private

  # def default_values
  #   self.image = "https://ucarecdn.com/419db702-51f4-4665-a2ca-d23739a97b71/" if self.image == ""
  # end
end
