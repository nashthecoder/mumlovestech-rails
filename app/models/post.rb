class Post < ApplicationRecord
  belongs_to :category
  def excerpt
    ActionView::Base.full_sanitizer.sanitize(body).truncate 25
  end
  def self.ransackable_attributes(auth_object = nil)
    %w(title)
  end
end
