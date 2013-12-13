class Topic
  include Mongoid::Document
  include Mongoid::Timestamps
  field :title, type: String
  field :description, type: String

  belongs_to :user
  has_many :posts

  # Class Methods

  # @return [Integer] with the number of posts in the current Topic
  def post_number
    self.posts.count
  end

  # @return [Date] with the date of the last post
  def last_post
    self.posts.last.try(:created_at)
  end
end
