class Message < ActiveRecord::Base
  belongs_to :user
  
  class << self
    def remove_excessive!
      if all.count > 100
        order('created_at ASC').limit(all.count - 50).destroy_all
      end
    end
  end

  validates :body, presence: true, length: {maximum: 2000}
end
