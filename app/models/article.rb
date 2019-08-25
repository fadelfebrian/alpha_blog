# frozen_string_literal: true

class Article < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, length: { minimum: 10, maximum: 100 }
  validates :description, presence: true, length: { minimum: 10, maximum: 100 }
end
