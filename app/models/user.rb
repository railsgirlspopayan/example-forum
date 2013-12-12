class User
  include Mongoid::Document
  field :name, type: String

  has_many :topics
  has_many :posts
end
