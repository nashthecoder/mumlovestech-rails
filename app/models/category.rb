class Category < ApplicationRecord
  has_many :posts
  def self.ransackable_attributes(auth_object = nil)
    %w(category)
  end
end
