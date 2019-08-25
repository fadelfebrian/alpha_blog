# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
