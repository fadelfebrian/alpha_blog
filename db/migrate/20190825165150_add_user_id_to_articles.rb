# frozen_string_literal: true

class AddUserIdToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :user_id, :integer, after: :description
  end
end
