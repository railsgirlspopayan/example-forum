class Topic
  include Mongoid::Document
  field :title, type: String
  field :description, type: String

  belongs_to :user
  has_many :posts
end
